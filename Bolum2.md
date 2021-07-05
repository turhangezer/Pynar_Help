# Modül 2 
# YORUM SATIRLARI,DEĞİŞKENLER, VERİ TİPLERİ VE OPERATÖRLER
## 2.1. Yorum Satırlarını Kullanma

Yorum satırları, Python yorumlayıcısı tarafından dikkate alınmayan ve yorumlanmayan ifadelerdir. Python’da yorum satırları genel olarak aşağıdaki işlemler için kullanılır:
* Bir hatırlatma eklemek
* Program veya kodlarla ilgili bir açıklama yapmak
* Kullanılmayan bir kod satırını pasif hale getirmek
* Süsleme yapmak

Bu tür açıklama satırları kodun başkaları tarafından daha iyi anlaşılmasını sağlar. Python’da tek satırlık açıklama için “#” işareti kullanılır. “#” işareti kullandığınızda o satırdaki metin kod olarak işlenmez.

**Örnek 1**

Aşağıdaki yorum satırları Python tarafından dikkate alınmamaktadır. Bu nedenle sadece “print()” komutu çalışır.

```python
#Bu kod ekrana yazı yazılmasını sağlamaktadır. 
print ("Konu: Yorum satırlarını kullanma") 
#Her satırın başına # işareti eklenerek
#alt alta yorum satırları oluşturulabilir.
```
Konu: Yorum satırlarını kullanma

**Örnek 2**

Yorum satırlarını kod satırının devamında aynı satırda kullanabilirsiniz. Bu kullanımda önce kod gelir,
devamında yorum satırı “#” işareti ile başlar (öndeki kod çalışır), daha sonra satır sonuna kadar yorum
satırı olarak dikkate alınmaz.

```python
print (2+3) # Bu kod satırı ekrana 2 sayının toplamını yazar.
```
5


Her satırın başına “#” işareti ekleyerek alt alta yorum satırları oluşturabilirsiniz. Yorum satırlarında özel
karakterler etkisizdir.

**Örnek 3**

Birden fazla yorum satırı kullanılacaksa yorumlar üçlü tek tırnak veya üçlü çift tırnak blokları arasına
yazılır.

```python
