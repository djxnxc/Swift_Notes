//
//  Swift - 文件操作.swift
//  Swift_文件操作
//
//  Created by 邓家祥 on 2019/7/3.
//  Copyright © 2019 JX. All rights reserved.
//

//iOS开发经常会遇到读文件，写文件等，对文件和文件夹的操作，这时就可以使用FileManager，FileHandle等类来实现。

import UIKit

class Swift_FileManager: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func searchDocumentPathOrUrl(){
        //1、获取用户文档目录路径
        let manager = FileManager.default
        let urlForDocument = manager.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urlForDocument[0] as URL
        print(url)
        //2、获取Documents目录下的文件名（浅遍历）
        let contentsOfPath = try? manager.contentsOfDirectory(atPath: url.path)
        print("指定目录下的文件名: \(String(describing: contentsOfPath))")
        //3、获取指定目录下的文件路径（浅遍历）
        /*
         skipsHiddenFiles跳过隐藏的文件
         skipsSubdirectoryDescendants 跳过子目录
         skipsPackageDescendants 跳过包目录
         */
        let contentsOfUrl = try? manager.contentsOfDirectory(at: url, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
        print("指定目录下的文件路径:\(String(describing: contentsOfUrl))")
        
        //4、深遍历，递归遍历指定目录下的文件及子文件下的文件（但不会递归符号链接）
        let deepOfPath = manager.enumerator(atPath: url.path)
        print("深遍历指定目录下的文件名及子目录文件名:\(String(describing: deepOfPath?.allObjects))")
        
        //5、深遍历，（但不会递归符号链接）遍历指定目录下的文件路径及子文件下的文件路径
        let deepOfUrl = manager.enumerator(at: url, includingPropertiesForKeys: nil, options: .skipsHiddenFiles, errorHandler: nil)
        print("深遍历指定目录下的文件路径及子目录文件路径:\(String(describing: deepOfUrl?.allObjects))")
        //6、深度遍历，会递归遍历子文件夹（包括符号链接，所以要求性能的话用enumeratorAtPath）
        let subPaths = manager.subpaths(atPath: url.path)
        print("深遍历指定目录下的文件名及子目录文件名:\(String(describing: subPaths))")
    }
    func fileIsExist(_ path:String) -> Bool{
        let fileManager = FileManager.default
        let filePath:String = NSHomeDirectory() + path
        let fileExist = fileManager.fileExists(atPath: filePath)
        return fileExist
    }
    func deleteFile(_ path:String){
        let manager = FileManager.default
        let filePath = NSHomeDirectory() + path
        try? manager.removeItem(atPath: filePath)
    }
    //创建文件
    @IBAction func createFile_btnClick(_ sender: Any) {
        let manager = FileManager.default
        let path = "/Documents/test1.txt"
        let filePath = NSHomeDirectory() + path
        //withIntermediateDirectories为ture表示路径中间如果有不存在的文件夹都会创建
        try? manager.createDirectory(atPath: filePath, withIntermediateDirectories: true, attributes: nil)
        let exist = fileIsExist(filePath)
        exist == true ? print("文件创建成功") : print("文件创建失败")
    }
    //查询目录下所有文件
    @IBAction func searchFilePath_btnClick(_ sender: Any) {
        searchDocumentPathOrUrl()
    }
    //检查文件是否存在
    @IBAction func fileIsExist_btnClick(_ sender: Any) {
        let path = "/Documents/test1.txt"
        let filePath = NSHomeDirectory() + path
        let exist = fileIsExist(filePath)
        exist == true ? print("文件存在") : print("文件不存在")
    }
    //删除文件
    @IBAction func delete_file_btnClick(_ sender: Any) {
        let path = "Documents/test1.txt"
        let filePath = NSHomeDirectory() + path
        deleteFile(filePath)
        let exist = fileIsExist(filePath)
        exist == true ? print("文件删除失败") : print("文件删除成功")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
