# Modül 7 
# FONKSİYONLAR, GLOBAL VE LOKAL DEĞİŞKENLER
## 7.1. Fonksiyon Kullanımı

Bu bölüme kadar kullanılan fonksiyonlardan bazıları şunlardır: print( ), input( ), int( ) ve len( )
Fonksiyonlar, matematikteki fonksiyonlarla aynı işlevi görürler. y=f(x)=x\*x gibi bir fonksiyon tanımlandığında verilen değeri kendisiyle çarpar. Bu görece kolay bir işlemdir. Bir sayının karesini hesaplamak gerektiğinde, formülü tekrar yazmak yerine bu fonksiyon kullanılabilir. Fonksiyonlar; kodları tekrar yazmayı
ortadan kaldırmak, kodları daha iyi organize etmek sonrasında bu kodları rahat bir şekilde kullanmak
için oluşturulur.
Python’da ve diğer programlama dillerinde birçok fonksiyon çeşitli kütüphanelerde veya varsayılan olarak tanımlı gelir. Bu sayede en temel işlemler için bile satırlarca kodu tekrarlamaya gerek kalmaz. 

Fonksiyonların görevi, karmaşık işlemleri bir araya toplayarak bu işlemleri tek adımda yapmayı sağlamaktır. Fonksiyonları kullanarak bir veya birkaç adımdan oluşan işlemleri tek bir yapı altında toplamak
mümkündür.

| **Fonksiyonun Adı** | **Parametreler - Argümanlar**          |
|:-------------------:|:--------------------------------------:|
| print               | (“Sultan”, “Murat”, sep=“ ”, end=“\n”) |
| input               | (“Argüman”)                            |

Her fonksiyonun bir adı (print, input, len vb.) ve işlevini yerine getirmesi için kullanabileceği parametre
adı verilen yapıları vardır. Parametreler fonksiyonda tanımlı özellik ve girdileri belirtir. Bir fonksiyonu
kullanırken (çağırırken) bu parametrelere verilen değerlere “argüman” denir. Aşağıda print(  ) fonksiyonu
ve parametrelerinin kullanımına örnek verilmiştir. “end” ve “sep” birer parametredir. Fonksiyonlarda bazı
parametreler zorunludur ve bir argüman (değer) girmek gerekir. Ancak yine bazı parametreler fonksiyon
içinde ön tanımlı olarak bir değer/boş (None) veya seçmeli olarak belirlenmiştir. Bu parametrelere değer vermek gerekmez. Bunlar, isteğe bağlıdır ve kullanılmayacak özellikler için argüman girmeye gerek
yoktur.

**Örnek 1**

Aşağıdaki örnekte print (  ) fonksiyonun “end” ve “sep” argümanlarıyla birlikte kullanımı gösterilmiştir:
```python
print ('Merhaba', 'Mars', sep=' ', end='\n') #parametreleri kullanarak
print ('Merhaba')
print ('Merhaba',' ', 'Mars') #parametreleri kullanmadan
print ('Merhaba')
Merhaba Mars
Merhaba
Merhaba Mars
Merhaba
```

## 7.2. Fonksiyon Oluşturma
Temel fonksiyonlar, Python içinde hazır olarak yer alan fonksiyonlardır. Bu fonksiyonlar tanımlı olduğu
için sadece fonksiyonadı(  ) yazarak kullanabilmektedir.
Bir fonksiyon def fonksiyonAdi(parametre1, parametre2,..):şeklinde tanımlanır. Fonksiyon içindeki kodlar girinti şeklinde blok yapısında yazılır. Fonksiyon yapısı dışında o fonksiyonu kullanmak için fonksiyonAdi(argüman1, argüman2) şeklinde parametre değerleri verilerek kullanılır. Örneğin, girilen bir sayının
çift bir sayı olup olmadığını bulan bir fonksiyon yazabilirsiniz. Fonksiyon bir parametreden oluşacak ve
bir sayı değeri alacaktır.

**Örnek 2**

Bir sayının çift olup olmadığını ekrana yazan bir fonksiyon.
**Hatırlatma:** Bir sayının 2’ye bölümünden kalan yoksa o sayı çifttir varsa tektir.

```python
def sayiCiftMi (sayi):
 if sayi%2==0:
 print('Sayı çifttir')
 else: ('Sayı tektir')
```
Bir fonksiyonu oluşturduktan sonra print(  ) fonksiyonunda kullandığınız şekilde parametrelere uygun
argümanları girip çağırabilirsiniz.

```python
sayiCiftMi(10)
Sayı çifttir
```

Fonksiyonun adı ve parametrelerine değerleri yazılarak fonksiyon kullanılabilir. Fonksiyon çağrıldığında
verilen argümanlara göre işlem yapar. Örnekteki fonksiyon 10 sayısını kontrol ederek sonucu “Sayı
çifttir” şeklinde ekrana yazdırır.

**Örnek 3**

Başka bir fonksiyon tanımlayabilirsiniz. Tanımlanan fonksiyon bir metni istenildiği kadar alt alta yazdırır.
Bu fonksiyonda yazdırılacak metin ve yazdırılma sayısı olmak üzere iki adet parametre olacaktır.

```python
def yazdir(metin,kacKere):
 for i in range (1, (kacKere+1)):
 print (metin, end='\n')
#Fonksiyon çağırma
yazdir('Merhaba', 5)
Merhaba
Merhaba
Merhaba
Merhaba
Merhaba
```

Aynı fonksiyon için parametreleri kullanıcıdan alabilirsiniz.

```python
yazdirilacakMetin=input('Yazdırılacak metni giriniz: ')
yazdirmaSayisi=int(input('Metin kaç kez yazdırılacak: '))
yazdir(yazdirilacakMetin, yazdirmaSayisi)
Yazdırılacak metni giriniz: Kara Murat
Metin kaç kez yazdırılacak: 4
Kara Murat
Kara Murat
Kara Murat
Kara Murat
```

**Örnek 4**

Bir sayının asal bir sayı olup olmadığını bulan bir fonksiyon yazabilirsiniz. Fonksiyon, sayı asal ise “True”;
değilse “False” değerini döndürecektir.

>  “for” döngüsünde sayının yarısına kadar bakmamızın nedeni bir sayının kendi değerinin yarısından önce böleni yok ise sonrasında da olmayacağı kuralıdır.

```python
def asalMi(sayi):
 sayac=2 # tüm sayılar 1'e bölüneceğinden 2 ile başlattık
 while sayac<=int(sayi/2):
 if sayi%sayac==0:
 return False
 sayac+=1
 return True
#Fonksiyonu çağırma
asalMi(113)
True
```

**Örnek 5**

Verilen sayının faktöriyelini bulan bir fonksiyon tanımlayabilirsiniz. Bir sayının faktöriyeli kendisinden
başlayarak 1’e kadar olan tüm sayıların çarpımıdır. 3!=3*2*1)

```python
def faktoriyelAl(sayi):
 sonuc=1
 if (sayi==0 or sayi==1):
 print('sonuç= ', 1)
 elif sayi>1:
 for i in range(1, sayi+1, 1):
 sonuc*=i
 print ('sonuc=', sonuc)
 else: print ('0 veya daha büyük sayısal bir değer girmelisiniz')
```
