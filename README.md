# Akıllı Masal Fabrikası

Çocukların kendi kahramanını seçip özelliklerini belirlediği, sonra dokunarak ya da sesle
yön verdiği interaktif masal uygulaması.

**Uygulamayı aç:** https://memreunlucan15.github.io/akilli-masal-fabrikasi/

Uygulama **Türkçe** ve **İngilizce** kullanılabilir; dil, ana sayfanın sağ üstündeki TR / EN düğmesiyle değişir.

Telefonda açtıktan sonra tarayıcı menüsünden **Ana ekrana ekle** dersen uygulama gibi
tam ekran açılır.

## Kazanımlar

- **Neden-sonuç:** Her bölüm, çocuğun seçiminin sonucunu "Sen … seçtin. Bu yüzden …" kutusuyla gösterir.
- **Yaratıcı yazarlık:** Kahramanı çocuk kurar; her adımda kendi fikriyle masala yön verebilir.
- **Dil gelişimi:** Her bölümde yeni bir kelime, Türkçe sesli okuma ve sonda anlama soruları.

## Ebeveyn paneli

Ana sayfadaki 👪 düğmesi, yetişkinlere yönelik bir kontrol sorusundan sonra paneli açar.

- **Özet:** son 7 günün masalları, süre, yeni kelimeler, çocuğun kendi fikirleri, bulmaca yıldızları ve öneriler.
- **Masallar:** her masalda çocuğun seçimleri, kendi yazdığı fikirler, bulmaca sonuçları; çocuğa not bırakma.
- **Kelimeler:** masallarda öğrenilen kelimelerin defteri.
- **Birlikte:** birlikte okuma soruları ve "masal tohumu" (bir sonraki masalın konusu, karakterleri, mesajı).
- **Ayarlar:** kendi fikir kutusu, mikrofon, bulmacalar, kaçınılacak konular, günlük masal sınırı ve masal saati.

**Ebeveynin kendi telefonundan takip:** Çocuğun cihazında Panel → Ayarlar → "Ebeveyn telefonuna bağla" bir kod ve QR üretir. Ebeveyn QR'ı telefon kamerasıyla okutur ya da panelde "Çocuk ekle" deyip kodu girer.
Veriler cihazda AES-GCM ile şifrelenir ve [textdb.dev](https://textdb.dev) üzerinden aktarılır; aracı sunucu içeriği okuyamaz. Ses kaydı paylaşılmaz.
Bu aktarım bir prototip çözümüdür; mağaza sürümünde kendi sunucumuza (ör. Supabase) taşınmalıdır.

## Geliştirme

`index.html` kaynak dosyadır. GitHub Pages sürümünü üretmek için:

```sh
sh build.sh
```

Bu komut `docs/index.html` dosyasını yeniden oluşturur; Pages `docs/` klasöründen yayınlanır.
