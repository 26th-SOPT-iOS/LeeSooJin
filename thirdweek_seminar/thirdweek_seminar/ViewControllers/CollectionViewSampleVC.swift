//
//  CollectionViewSampleVC.swift
//  thirdweek_seminar
//
//  Created by Soojin Lee on 2020/05/09.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import UIKit

class CollectionViewSampleVC: UIViewController {
    private var musicList: [Music]=[]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setMusicList()


        // Do any additional setup after loading the view.
    }
    
   private func setMusicList() {
            let music1 = Music(coverName: "album_iu", singer: "아이유", title: "삐삐")
            let music2 = Music(coverName: "album_vibe", singer: "바이브", title: "가을타나봐")
            let music3 = Music(coverName: "album_yangdail", singer: "양다일", title: "고백")
            let music4 = Music(coverName: "album_im", singer: "임창정", title: "하루도 그대를 사랑하지 않은 적이 없었다.")
            let music5 = Music(coverName: "album_smtm7", singer: "루피(Loopy)", title: "Save (Feat. 팔토알토)")
            let music6 = Music(coverName: "album_ziont", singer: "자이언티", title: "멋지게 인사하는 법 (Feat. 슬기")
            let music7 = Music(coverName: "album_bts", singer: "방탄소년단", title: "IDOL")
            let music8 = Music(coverName: "album_loco", singer: "로꼬", title: "시간이 들겠지 (Feat. Colde)")
            let music9 = Music(coverName: "album_paul", singer: "폴킴", title: "모든 날, 모든 순간")
            let music10 = Music(coverName: "album_shaun", singer: "숀(SHAUN)", title: "Way Back Home")
    
            musicList = [music1, music2, music3, music4, music5, music6, music7, music8, music9, music10]
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

extension CollectionViewSampleVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let MusicCellCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCellCollectionViewCell.identifier, for: indexPath)
            as? MusicCellCollectionViewCell else { return UICollectionViewCell() }
        MusicCellCollectionViewCell.set(musicList[indexPath.row])
        return MusicCellCollectionViewCell
    }
}


extension CollectionViewSampleVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt
        indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width-40) / 2, height: collectionView.frame.height / 4)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
