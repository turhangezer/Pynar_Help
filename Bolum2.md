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
'''Python'da birden fazla açıklama satırı kullanmak için üçlü tek tırnak veya çift
tırnak kullanılır. Açıklama satırını bitirmek için aynı işaretler kullanılır.'''
```
'Python'da birden fazla\naçıklama satırı\nkullanmak için üçlü tek tırnak veya çift\n
tırnak kullanılır. Açıklama satırını bitirmek için \naynı şekilde kullanılır.'

Konsol çıktısında açıklamalar birden fazla satırda olduğu için satır sonlarına \n kaçış dizisi karakterini
konsol otomatik olarak eklemiştir. Aynı yorum satırını ′′′′′′yorum satırları′′′′′′ üçlü çift tırnak kullanarak da
yapılabilir. Yorum satırları içinde kaçış dizisi karakterlerinin de çalışmadığı unutulmamalıdır.

**Örnek 4**

Yorum satırlarını Python yorumlayıcı dikkate almaz. Ancak aşağıdaki kod satırları yorum satırı olarak
değerlendirilmez.

```python
#!/usr/bin/env python3 veya #!c:/Python/python.exe
# -*- coding: utf-8 -*-
"#!/usr/bin/env python3" kodu Python 3 yorumlayıcısının Linux için dosya konumunu
belirtir.
"#!c:/Python/python.exe" kodu Python 3 yorumlayıcısının Windows için dosya konumunu
belirtir.
"# -*- coding: utf-8 -*- " Kullanacağınız karakter kodlamasını belirtmek için
kullanılır. utf-8 Türkçe alfabeyi de destekleyen bir karakter kodlama sistemidir.
```

**Örnek 5**

Yorum satırları süsleme amacıyla da kullanılabilir. Bazı program dosyalarında aşağıdaki gibi süslü açık-
lamalar, etiketler görülebilir.

```python
'''
#####################################################################
#******************************************************************##
# Python Öğreniyorum ##
# Python 3 ##
#******************************************************************##
#####################################################################
'''
```

## 2.2. Değişkenler

Kod yazarken sadece sabit değerler üzerinden işlemler yapılmaz. Kullanıcıdan veya başka kaynaklar-
dan veri alınması gerekir. Örneğin, kullanıcıya ismiyle “merhaba” diyeceğimiz bir kod yazmak ister-
sek her kullanıcıdan ismini girdi olarak almamız gerekir. İşlem yapabilmek için bu girdiler (değerler)

bellekte tutulmalıdır. Bu girdileri depolamak amacıyla bellekte belirli bir yer ayrılması gerekir. Bir
değişken tanımlandığında yorumlayıcı, veri türüne bağlı olarak bellekte yer ayırır ve ayrılan bölümde
hangi türden verilerin saklanabileceğini belirler. Değişkenler bir isim, sayı veya farklı türdeki bir veri
için bellekte ayrılan bu yeri temsil eder. Değişkenlere farklı veri tiplerinde değerler atanabilir. Değer
atama ile (bir değişkeni bir değere eşleyerek) tam sayı, ondalık sayı, dizi veya karakter dizisi türünde
değerler değişkenlerde tutulabilir. Python, bu konuda çok esnektir. Python’da değişkenlerinin veri

tiplerini açıkça bildirmeye gerek yoktur. Aynı değişken farklı veri tiplerinde değerler alabilir. Aynı de-
ğişkene önce sayı, sonra bir metin daha sonra başka türde bir değer atanabilir. Bir değişkene değer

atandığında veri tipi otomatik olarak tanımlanır. Eşittir operatörü “=” değişkenlere değer atamak için
kullanılır. “=” Operatörünün solunda değişkenin adı ve “=” operatörünün sağında ise bu değişkene
atanacak değer yer alır.


**Örnek 6**

Değişken oluşturma ve değer atamaya ilişkin örnekler:
```python
#sayi1 değişkenine 5 sayısı atandı.
sayi1=5
print('Değişkenin içindeki sayı: ', sayi1)
sayi1=10
print('Değişkenin içindeki sayı: ', sayi1, 'oldu')
sayi1='Murat'
print ('Değişkenin içindeki değer: ', sayi1, 'oldu')
sayi1=10.5
print ('Değişkenin içindeki sayı: ', sayi1, 'oldu')
```
Değişkenin içindeki sayı: 5
Değişkenin içindeki sayı: 10 oldu
Değişkenin içindeki değer: Murat oldu
Değişkenin içindeki sayı: 10.5 oldu

Örnekte aynı değişkene hem karakter dizisi (string) hem de sayısal değerler atanmıştır.
Bir değişkene değer atanırken birden fazla yöntem kullanılabilir. Örnekte buna ilişkin kodlar verilmiştir.

**Örnek 7**

Aşağıda 3 değişkene de tek satırda 1 değeri atanmıştır.

```python
a = b = c = 1
print ('1. sayı=', a)
print ('2. sayı=', b)
print ('3. sayı=', c)
```
1. sayı= 1
2. sayı= 1
3. sayı= 1

**Örnek 8**

Değişkenler aralarına virgül eklenerek yan yana yazılır. Değerleri de aynı sıralama ile karşılarına yazılır.

```python
adi, soyadi, yasi='Canan', 'DAĞDEVİREN', 34
print ("Adı=", adi)
print ("Soyadı=", soyadi,)
print ("Yaşı=", yasi)
```
Adı= Canan
Soyadı= DAĞDEVİREN
Yaşı= 34

**Örnek 9**

Değişkenlere değer atamak için başka bir yöntem aralarına noktalı virgül “;” ekleyerek değişken - değer
ikilileri şeklinde yazmaktır.

```python
adi='Aziz'; soyadi='SANCAR'; yasi=73
print ("Adı=", adi)
print ("Soyadı=", soyadi,)
print ("Yaşı=", yasi)
```
Adı= Aziz
Soyadı= SANCAR
Yaşı= 73

**Örnek 10**

Değer atanmayan ve/veya tanımlanmamış bir değişken kullanılırsa Python hata verir.

```python
print (yenisayi)
#Python değişkenleri değer atandığında tanımlandığı için hata mesajı alırsınız.
# yenisayi değişkeni tanımlanmamış olduğu için hata mesajı alınır.
```
NameError Traceback (most recent call last)
<ipython-input-1-9ff08615337f> in <module>()
----> 1 print (yenisayi)
NameError: name 'yenisayi' is not defined
  
Değer atamadan tanımlamak için yenisayi=int( ) kodu kullanılabilir. Bu durumda değişkene ilk değer
olarak “0” sıfır atanır.
  
```python
yenisayi=int( )
print(yenisayi)
0
```
  
**Örnek 11**
  
Değişkenler veri tiplerine göre kullanılmazsa Python hata verir.
  
```python
sayi1=1
metin1='deneme'
print(sayi1+metin1) #Bir sayı ile bir metin, kelime toplanamaz.
```
  
TypeError Traceback (most recent call last)
<ipython-input-47-e585c633881d> in <module>()
1 sayi1=1
2 metin1='deneme'
----> 3 print(sayi1+metin1) #Bir sayı ile bir metin, kelime toplanamaz.
TypeError: unsupported operand type(s) for +: 'int' and 'str'
  
  

