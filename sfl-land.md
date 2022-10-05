## Download Alat Dasarnya:
- https://nodejs.org/en/ (ambil yang LTS)
<img src="https://user-images.githubusercontent.com/12151051/194008844-f37e2cec-8352-4311-98e1-38ab07bcba65.png" width=240>

> NodeJs buat ngejalanin ReactJs/ lebih tepatnya JavaScript dan NPM (Node Package Manager) buat install2 plugin
Kalau udh install lanjut cek versi apakah udh bener ke install atau belum, buka cmd/ command prompt, ketikan,
`node -v` (enter untuk meng eksekusi) dan `npm -v` (enter untuk meng eksekusi) (-v atau --version) Kalau udah terinstall dgn benar maka akan keluar versinya
  <img src="https://user-images.githubusercontent.com/12151051/194009845-fd05c116-d291-434c-81f4-8b8a12588c08.png" width=340>


- https://git-scm.com/downloads (ambil yang kotak atas jgn GUI)
> ini berguna buat nge"pull" (download) dan "push" (upload) ke repository(folder) github
> , step detail installasi ada [disini](https://adamtheautomator.com/git-bash/)
<img src="https://user-images.githubusercontent.com/12151051/194009124-cad8a687-55f2-41d3-be14-8d40f1dfa04f.png" width=360>

<br/><br/>

## Clone Repository
Biar ga rusuh sama github SFL asli, kita fork dulu repository SFL, caranya, (pastikan kamu udh login github yaa)
- ke link ini https://github.com/sunflower-land/sunflower-land

- di pojok kanan atas ada tombol "Fork" klik aja, sekarang seharusnya kamu diarahkan ke repository cloning di akunmu
cara taunya liat di link akan ganti jadi `github.com/<username_github_kamu>/sunflower-land`
<img src="https://user-images.githubusercontent.com/12151051/194009606-4ec0fd94-bec0-4c0f-90c8-82836a6f1b58.png" width=720>

<br/><br/>

## Download Repository
Kalau udah berhasil, next step download repo tsb dengan cara, 
- cari "Git Bash" di start menu dan jalankan
> untuk pertama kali buka biasanya kalian disuruh login, login lah pakai akun github kalian

- setelah login arahkan ke folder kalian dengan command `cd <path_folder_yg_kalian_sediain_sblmnya>` (enter untuk meng eksekusi) atau kepanjangan dari "change directory"
<br/>contoh `cd "F:\Gawean\Sunflower Land\sunflower-land"` (enter untuk meng eksekusi)
> atau cara simple, buka folder, lalu klik kanan dimanapun didalam folder, pilih "Git Bash Here"
<img src="https://user-images.githubusercontent.com/12151051/194015007-91074294-4703-4f0c-8e7b-3d12971f3b50.png" width=360>

- Selanjutnya masih di dalam "bash" ketikan `git clone https://github.com/<username_github_kamu>/sunflower-land.git`(enter untuk meng eksekusi), 
tunggu proses selesai, maka file akan ada di folder kalian
<img src="https://user-images.githubusercontent.com/12151051/194015906-3d34b0ea-74f4-4dde-8755-70c4f65d0a9f.png" width=360>


> link tersebut didapat dari tombol "Clone" lalu copy link didalam tab HTTPS tersebut
<img src="https://user-images.githubusercontent.com/12151051/194015340-c28a1017-8ac2-4c93-b29f-15875c511142.png" width=720>

<br/><br/>

## Persiapan Menjalankan Sunflower Land Secara Local
setelah cloning maka kita sudah siap untuk menjalankan sunflower land secara local
- Masih di dalam bash, kita akan berpindah pada folder yang barusan kita clone/download, ketikkan `cd sunflower-land/` (enter untuk meng eksekusi)

- Kemudian ketikan, dan jalankan secara berurutan (enter untuk meng eksekusi)
 1. `npm install --global yarn`
 2. `yarn install`
 3. `cp .env.sample .env`
> tunggu sampai proses selesai.

<br/><br/>

## Eksekusi Sunflower Land Secara Local
1. Buka folder `sunflower-land` yang sudah di clone tadi
2. Klik kanan pada folder, kemudian "Git Bash Here"
3. Ketikan `yarn dev`
4. Tunggu proses berjalan, otomatis akan membuka tab browser baru yang membuka sunflower land secara local
5. Selamat kalian telah berhasil sampai disini
> Note: Untuk menambahkan SFL, tanaman, maupun NFT kalian akan ada tutorial lebih lanjut.. so stay tune.. 

<br/><br/>

## Tutorial Created By
Discord id: Nicole_#7554<br/>
Farm id: 139161<br/>
Matic Address: 0x0495bcfF68A5b1E79C9C2A2C50144Ce08C80bCBd<br/>
