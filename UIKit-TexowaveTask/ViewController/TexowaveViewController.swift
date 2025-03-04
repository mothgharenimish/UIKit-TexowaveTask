//
//  TexowaveViewController.swift
//  UIKit-TexowaveTask
//
//  Created by Nimish Mothgare on 29/01/24.
//

import UIKit

class TexowaveViewController: UIViewController {

    //MARK: -IBOutlet
    @IBOutlet weak var pdfcollectionView: UICollectionView!
    @IBOutlet weak var filestableView: UITableView!
    @IBOutlet weak var fileheight: NSLayoutConstraint!
    
    
    //MARK: -PDF Array
    var pdf = [PdfSignIn]()
    
    //MARK: -Files Array
    var files = [Files]()
    
    //MARK: -View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        pdfcollectionView.dataSource = self
        pdfcollectionView.delegate = self
        pdfcollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        filestableView.dataSource = self
        filestableView.delegate = self
        
        self.filestableView.isScrollEnabled = false
        

        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        pdfcollectionView.collectionViewLayout = flowLayout
        
        pdfcollectionView.register(UINib(nibName: "TexowaveCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TexowaveCollectionViewCell")
        
        filestableView.register(UINib(nibName: "FilesTableViewcell", bundle: nil), forCellReuseIdentifier: "FilesTableViewcell")
        
        //PDF Array
        let pdf1 = PdfSignIn(pdfImg: "icons8-signin-50", pdftitle: "Add SignIn")
        pdf.append(pdf1)
        
        let pdf2 = PdfSignIn(pdfImg: "icons8-add-50", pdftitle: "Add Stamp")
        pdf.append(pdf2)
        
        let pdf3 = PdfSignIn(pdfImg: "icons8-scanner-50", pdftitle: "Scanner")
        pdf.append(pdf3)
        
        let pdf4 = PdfSignIn(pdfImg: "icons8-school-50", pdftitle: "School")
        pdf.append(pdf4)
        
        let pdf5 = PdfSignIn(pdfImg: "icons8-stamp-50", pdftitle: "Add Stamp")
        pdf.append(pdf5)
        
        let pdf6 = PdfSignIn(pdfImg: "icons8-add-50", pdftitle: "Add Stamp")
        pdf.append(pdf6)
        
        //Files Array
        
        let files1 = Files(filename: "Folder1", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files1)
        
        let files2 = Files(filename: "Folder2", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files2)
        
        let files3 = Files(filename: "Folder3", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files3)
        
        let files4 = Files(filename: "Folder4", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files4)
        
        let files5 = Files(filename: "Folder5", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files5)
        
        let files6 = Files(filename: "Folder6", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files6)
        
        let files7 = Files(filename: "Folder7", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files7)
        
        let files8 = Files(filename: "Folder8", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files8)
        
        let files9 = Files(filename: "Folder9", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files9)
        
        let files10 = Files(filename: "Folder10", filedateandtime: "28-07-2023 12:07 PM ")
        files.append(files10)
        
        files.append(files10)
        files.append(files10)
        files.append(files10)
        files.append(files10)
        files.append(files10)
        files.append(files10)

        
    }
}

//MARK: -UICollectionViewDelegate
extension TexowaveViewController : UICollectionViewDelegate {
    
    
}

//MARK: -UICollectionViewDataSource
extension TexowaveViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.pdf.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = pdfcollectionView.dequeueReusableCell(withReuseIdentifier: "TexowaveCollectionViewCell", for: indexPath) as! TexowaveCollectionViewCell
        
        cell.pdftitleLbl.text = pdf[indexPath.row].pdftitle
        cell.pdfImg.image = UIImage(named: pdf[indexPath.row].pdfImg ?? "")
        
        return cell
    }
    
    
    
}

//MARK: -UICollectionViewDelegateFlowLayout
extension TexowaveViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 105, height: 105)
    }
}

//MARK: -UITableViewDelegate
extension TexowaveViewController : UITableViewDelegate {
    
   
}

//MARK: -UITableViewDataSource
extension TexowaveViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return files.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = filestableView.dequeueReusableCell(withIdentifier: "FilesTableViewcell", for: indexPath) as! FilesTableViewcell
        cell.filenameLbl.text = files[indexPath.row].filename
        cell.dateandtimeLbl.text = files[indexPath.row].filedateandtime
        
        self.fileheight.constant = CGFloat(self.files.count * 80)

        return cell
    }
    
    
}


