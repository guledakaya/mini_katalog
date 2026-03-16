Mini Katalog Uygulaması - Flutter
=================================

Bu proje, Software Persona bünyesinde gerçekleştirilen Yazılım Stajı kapsamında, **Mobil Uygulama Geliştirme** eğitim haftası içeriklerine uygun olarak geliştirilmiş bir *Mini Katalog Uygulaması* prototipidir.

Proje Hakkında
-----------------
Uygulama; modern bir kullanıcı arayüzü (UI) tasarımı, sayfa yönetimi (Navigation) ve veri modelleme tekniklerini içeren basit bir katalog/e-ticaret akışını simüle eder. Ürünler listelenir, detay sayfasına gidilir ve sepete ekleme işlemi temel bir state simülasyonu ile gösterilir.

Teknik Özellikler & Kazanımlar
---------------------------------
- **Mimari Yapı**: Kod yapısı `models`, `screens` ve `widgets` klasörlerine ayrılarak okunabilirlik ve sürdürülebilirlik artırılmıştır.
- **Veri Modelleme**: `Product` model sınıfı ile nesne tabanlı programlama (OOP) prensipleri üzerinden veri yönetimi kurgulanmıştır.
- **Navigasyon**: Sayfalar arası geçişte `Navigator.push` kullanılarak ürün nesnesi detay sayfasına aktarılır.
- **UI Bileşenleri**: `GridView.builder`, `Stack`, kart tabanlı tasarımlar ve gradient banner ile modern bir arayüz oluşturulmuştur.
- **State Simülasyonu**: “Sepete Ekle” aksiyonunda `SnackBar` ile geri bildirim ve sepet simülasyonu uygulanmıştır.

Klasör Yapısı
----------------
```text
lib/
├── models/   # Ürün veri modeli ve dummy simülasyon verileri
├── screens/  # Discover (ana liste) ve ProductDetail (ürün detay) sayfaları
├── widgets/  # Tekrar kullanılabilir arayüz bileşenleri (ör. ProductCard)
└── main.dart # Uygulama giriş noktası ve tema yapılandırması
```

Çalıştırma
-------------
Projenin kök klasöründe aşağıdaki komutları izleyerek uygulamayı çalıştırabilirsiniz:

```bash
flutter pub get
flutter run
```

Geliştirici
----------------
Gül Eda KAYA  
Software Persona Yazılım Stajı - 2026
