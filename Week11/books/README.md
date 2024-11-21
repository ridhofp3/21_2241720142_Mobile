### Ridho Fauzian Pratama
### 2241720142
### TI-3h

### <span style="color:red">Sekali lagi mohon maaf pak karena debugging saya masih belum bisa jadi saya hanya akan menjawab soal sebisa saya pada praktikum kali ini</span>

Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
``` dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ridho Fauzian',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}
```

Soal 2
- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".
``` json
{
    "kind": "books#volume",
    "id": "n3vng7gyGCYC",
    "etag": "V82afmAfGcU",
    "selfLink": "https://www.googleapis.com/books/v1/volumes/n3vng7gyGCYC",
    "volumeInfo": {
        "title": "Harry Potter",
        "publisher": "PediaPress",
        "publishedDate": "2019",
        "readingModes": {
            "text": false,
            "image": true
        },
        "pageCount": 1011,
        "printedPageCount": 1011,
        "printType": "BOOK",
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "0.1.1.0.preview.1",
        "panelizationSummary": {
            "containsEpubBubbles": false,
            "containsImageBubbles": false
        },
        "imageLinks": {
            "smallThumbnail": "http://books.google.com/books/content?id=n3vng7gyGCYC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73Da105-29C7K2M7yzzUYI2N79dE-sk0U30tDV_Db2uLZ1HN6WxSBk-NoEpMyhM7uDnDUexLpIODReP3wqQegUzK61fmTbvvj2S7P-gryDQPmANr1hUDz7eoQ2rAPoySJy9V-5x&source=gbs_api",
            "thumbnail": "http://books.google.com/books/content?id=n3vng7gyGCYC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73fRF-dxcnF-z9AT_8V7SVXA8FAK1u9NiMvWPvKCmlwAIpSyPmDbc8l2GfoTh3MdhTLUHToj8eOQ369nELfBtmkjuAQRyEVf0cv52_hVstPynPFZJQPezW0aUxCbIA-gbt8HR5C&source=gbs_api",
            "small": "http://books.google.com/books/content?id=n3vng7gyGCYC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71lKWsQm9G8L3eIcsf1bt6z0D6SIraFpXbCaEXvdudLTeKSIEXFUiecMFkvfKo16-Z9UVyEJG9DMOjynbBTaFOUfyDx9jf0-w-7lQBzU6GAKeXD5uMRkOSRUDLsob7HeXXOnJw_&source=gbs_api",
            "medium": "http://books.google.com/books/content?id=n3vng7gyGCYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73dnAra4h8esbrt-fCJx3hk0Z3ehZn0E4WOCxcmGuP-W1ARdqSIwOBYOES4alyVmi1sgAliazB_blSsGvGb2TI7RD8BGVgMFC1GMszsUbokah5SS5cT22veHOoKXundYPd9EZWo&source=gbs_api",
            "large": "http://books.google.com/books/content?id=n3vng7gyGCYC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE72wfB5WprIZ9Y9f7oFs11yPFiCwTC74-iOFm_1C-m93uAViOapcYr08_ZF78SJXxVZMk_HqThiUGdOZFU23bMO4q1mAyW-hqma4JW1sPexdw8grCgVwbAeCHNh-0WJ5G-Dm8boW&source=gbs_api",
            "extraLarge": "http://books.google.com/books/content?id=n3vng7gyGCYC&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE72fPlX08GMscte9krPpoQOVzMCwDg0fVZJn97wg_c82JRb0ygW54BuVOYhkCEIWlJYymDB8tAwKqh543eash35mpsi2cMJGKxwwNkyfudPh0GBTReu-sE03B18XUgJGmF9MlQqH&source=gbs_api"
        },
        "language": "en",
        "previewLink": "http://books.google.co.id/books?id=n3vng7gyGCYC&hl=&source=gbs_api",
        "infoLink": "https://play.google.com/store/books/details?id=n3vng7gyGCYC&source=gbs_api",
        "canonicalVolumeLink": "https://play.google.com/store/books/details?id=n3vng7gyGCYC"
    },
    "saleInfo": {
        "country": "ID",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false
    },
    "accessInfo": {
        "country": "ID",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
            "isAvailable": false
        },
        "pdf": {
            "isAvailable": true,
            "acsTokenLink": "http://books.google.co.id/books/download/Harry_Potter-sample-pdf.acsm?id=n3vng7gyGCYC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink": "http://play.google.com/books/reader?id=n3vng7gyGCYC&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
    }
}
```

Soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
```
substring digunakan untuk mengambil sebagian dari string
catcherror digunakan untuk menangkap error
```
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".

Soal 4
- Jelaskan maksud kode langkah 1 dan 2 tersebut!
```
Langkah 1 : 
returnOneAsync() mengembalikan nilai 1 setelah 3 detik 
returnTwoAsync() mengembalikan nilai 2 setelah 3 detik 
returnThreeAsync() mengembalikan nilai 3 setelah 3 detik 

Langkah 2 :
fungsi count() menjalankan ketiga fungsi di atas secara berurutan kemudian menjumlahkan ketiga nilai yang dihasilkan kemudian mengubah nilai result menjadi total
```
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 4".

Soal 5
- Jelaskan maksud kode langkah 2 tersebut!
```
getNumber adalah fungsi yang mengembalikan nilai dari future
calculate adalah fungsi yang menghitung nilai dari future
```
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 5".

Soal 6
- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
```
- fungsi pertama menggunakan async dan await, sedangkan fungsi kedua menggunakan try dan catch
- fungsi pertama akan menunggu 5 detik sebelum mengembalikan nilai 42, sedangkan fungsi kedua akan menunggu 5 detik sebelum mengembalikan nilai 42, tetapi jika terjadi error, maka akan mengembalikan 'An error occurred'
```
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 6".

Soal 7
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 7".

Soal 8
Jelaskan maksud perbedaan kode langkah 1 dan 4!
```
FutureGroup memungkinkan Anda menambahkan Future secara dinamis sebelum memproses hasilnya, sehingga cocok jika jumlah Future tidak diketahui di awal. Anda perlu secara eksplisit menutup grup dengan close() untuk menyelesaikan prosesnya, tetapi ini membutuhkan pustaka eksternal seperti async.

Future.wait adalah fungsi bawaan Dart yang digunakan untuk menunggu sejumlah Future yang sudah diketahui di awal. Lebih sederhana dan langsung digunakan, tetapi tidak mendukung penambahan Future secara dinamis setelah pemrosesan dimulai.
```

Soal 9
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 9".

Soal 10
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

Soal 11
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

Soal 12
- Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));
- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 12".

Soal 13
- Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 13".
- Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI.

Soal 14
- Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 14".

Soal 15
- Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
- Silakan ganti dengan warna tema favorit Anda.

Soal 16
- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
- Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 16".

Soal 17
- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
- Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 17".