# Modül 5
# LİSTELER VE ÖZELLİKLERİ 

Programlamada bir değişken üzerinde sadece bir değer tutulabilmektedir. Listeler ise bir değişkenin
altında birden fazla değer tutulabilmesine yarar. Listeler, içinde farklı türlerden verileri barındırabilen taşıyıcılar olarak adlandırılmaktadır. Listeler Python’daki veri tiplerinden biridir. Listeler sıralı olarak
kaydedilebilen veri yapılardır. Verilere döngü gibi yapılarla sıralı olarak erişmek istenildiğinde bize büyük
avantaj sağlayıp, iki köşeli parantez arasında tanımlanırlar. Listelerde sözlüklerden farklı olarak dilimlenebilir ve elemanları sonradan değiştirilebilir. Aşağıda görüldüğü üzere boş liste ve int, string ve float
verilerini bulunduran listeler tanımlanmıştır.

``` 
liste= [] #boş list
liste=list()
liste1=[1,2,3,4,5,6]
liste2=['a','b','c']
liste3=[0.5,1.7,67.89,3.14]
liste4=['ali','veli','yılmaz','hayri']
liste5 = list(ifade for degisken in sequence) # Hesaplanan bir liste
```

## 5.1. Liste Veri Tipleri

Bir listede her veri tipinden eleman saklanabilir. Bu anlamda sıralı bir diziye benzemektedir.

**Örnek 1**

```
liste=[1,2,'ali',0.25]
print(liste)
[1, 2, 'ali', 0.25]

```

Örnek 1’de int, string ve float gibi farklı veri tiplerini içerisinde barındıran 4 elemanlı bir listedir.
Karakter dizilerin indis değerleri değiştirilmek istendiğinde aşağıdaki gibi hata mesajı alınır.

```
meyve="erik"
meyve = 5 +meyve[0:]
print(meyve)
Traceback (most recent call last):
File "<ipython-input-9-e4575713155c>", line 2, in <module>
meyve = 5 +meyve[0:]
TypeError: unsupported operand type(s) for +: 'int' and 'str'
```

**Örnek 2**

```
Örnek 2
meyve ="erik"
meyve = "ayva-" +meyve[0:]
print(meyve)
liste=['a','b']
liste[1]=2
print(liste)
ayva-erik
['a', 2]
```

Örnek 2’de karakter dizisi ile liste kullanımı beraber verilmiştir. Karakter dizisi string ama liste 1.indis
numarasındaki öge ‘b’ iken sonra int veri tipinde 2 olarak değiştirilmiştir.
Listeyi oluşturmak için önce bir değişken adı verilir, daha sonra bu değişkene çeşitli değerler atanır.
Atamalar yapılarak liste oluşturulur. Bir liste oluşturulup bir değişkene atandığı zaman aslında tüm atamalarda olduğu gibi liste nesnesinin adresi değişkene atanmaktadır.
Örnek 3’te oluşturulan liste içine herhangi bir eleman eklenmediği için bu liste içi boş bir listedir. Çıktı
olarak boş liste vermektedir.

**Örnek 3**

```
liste=[ ] #veya liste=list()
print(liste)
[ ]
```

## 5.2. Liste Kavramı ve İndis Değerleri

Öncelikle liste üzerinden veri okuyabilmek için hangi indis elemanının okunmak istendiği doğru bir şekilde belirtilmelidir. Örneğin Harfler isminde bir liste olduğunu düşünün. Listelerde ilk eleman her zaman
0. indistir. Listenin ilk elemanına erişmek veya yazmak istendiğinde Harfler[0] yazılması gerekmektedir.
Diğer elemanları için de sırasıyla Harfler[1], Harfler[2] şeklinde yazılması gerekmektedir. Buradaki bir
diğer önemli nokta da listenin ilk elemanı 0. indisten başladığı için son elemanı da liste uzunluğun bir
eksiğidir.


Tablo 1. Listelerde indis numarasına göre veri sıralaması

|            |             |             |                  |
|------------|-------------|-------------|------------------|
| Başlangıç  |             |             | Bitiş(Uzunluk-1) |
| Harfler[0] | Harfler[1]  | Harfler[2]  | …                |


```
renkler = ['Red', 'Orange', 'Yellow', 'Green', 'Blue', 'Indigo', 'Violet']
print('listeyi ekrana yazdırıyoruz')
print(renkler)
listeyi ekrana yazdırıyoruz
['black', 'Orange', 'Yellow', 'Green', 'Blue', 'Indigo', 'Violet']
```

Örnek 4’te görüldüğü üzere renkler listesindeki tüm ögeleri listelenmiştir.
Python’da listeler üzerinde değişik türden veriler bir arada tutulabilir. Python’ı güçlü kılan özelliklerden
biri olan listelerde, her bir eleman bir indis (indis) numarasına sahiptir. Bir listenin başlangıç indisi 0
(sıfır)’dır.

Tablo 2. İndis numarasına göre liste örneği

|                 |             |            |            |              |
|-----------------|-------------|------------|------------|--------------|
| İndis numarası  | Liste[0]    | Liste[1]   | Liste[2]   | Liste[3]     |
| Öge sıralaması  | Birinci öge | İkinci öge | Üçüncü öge | Dördüncü öge |
| Liste =         | ‘ali’,      | 5,         | 3.14,      | ‘ayşe’       |

Başlangıç elemanları belli olan bir listenin tanımlanması ve yazdırılması:


**Örnek 5**
```
#liste1 adında bir liste tanımladık. İçine verileri girdik
#bu verileri ekrana yazdırdık
liste1 = ['a','b','c','d','e','f']
print(liste1)
['a', 'b', 'c', 'd', 'e', 'f']
```

Örnek 5’te liste1 adında liste tanımlandı ve char(karakter) olarak ögeleri bulunmaktadır. İndis numarasına bakıldığı zaman; aşağıdaki şekilde ögeler vardır.
liste1[0] ='a' liste1[1] ='b' liste1[2] ='c' liste[3] ='d'
liste1[4] ='e' liste1[5] ='f'

```
Listeler hem string hem de sayı türünde veriler barındırabilir. Örnek 6 incelendiğinde 7 elemanlı bir liste
tanımlıdır. 6 ve 7. elamanları sayı diğerleri metin olan bir listedir.
```

**Örnek 6**
```
liste2=['python','geleceği','olan','bir','dil',500,0.567]
print(liste2)
['python', 'geleceği', 'olan', 'bir', 'dil', 500,0.567]
```
Örnek 6’da sayı, float ve string ögelerine sahip liste ekrana yazdırılmıştır.

## 5.3. Liste Elemanlarına Erişim

Listedeki ögelere ulaşmak için bir değer, listenin indis numarasına göre atanıp çağrılabilir. Liste oluştururken içine herhangi bir değer girilmeden de oluşturulup, sonradan değer ataması yapılabilir ya
da herhangi bir indis numarasından başlanıp belirlenen indis numarasına kadar olan ögelere ulaşılır.
Aşağıdaki örneklerde görüldüğü gibi hem indis numarasından hem de başlangıcı ve bitişi belli olan
indis numarası aralıklarına kadar ifadelere erişilmiştir. Listenin belirli aralıktaki öğelerini alma işlemine
dilimleme denir. Liste dilimlerken adımlama da başlangıç indisi alır ama bitiş indisi almaz.


**Kullanımı:**
```
eleman = liste[indis]
dilim = liste[baslangic:bitis]
```
Liste, elemanlarına erişim için tamamını veya indis numarasına göre çağırmaktadır.

**Örnek 7**
```
liste=["birinici veri","ikinci veri","üçüncü veri ","dördüncü veri","beşinci veri"]
#beş elemenlı listenin ilk verisi
print(liste[0])
#beş elemenlı listenin son verisi
print(liste[4])
birinici veri
beşinci veri
```
Örnek 7’de listenin indis numaraları yazılarak, başlangıç ve bitiş ögelerine ulaşılmıştır.

**Örnek 8**
```
liste=["ayva","armut","kiraz","vişne"]
print(liste)
print(liste[1])
['ayva', 'armut', 'kiraz', 'vişne']
armut
```
Örnek 8’de ise listenin tüm ögeleri ve 1. indis numarasındaki öge olan “armut” değeri listelenmiştir.
Liste içindeki ögeleri kontrol edilebilir. Eşya adında bir liste var. Liste tanımlanır, daha sonra if karar yapısı ile içindeki ögeler de “perde” olup olmadığı kontrol edilir.

**Örnek 9**
```
esya = ["ayna", "televizyon", "perde"]
if("perde" in esya):
 print("Bu değer listede var.")
else:
 print("Bu değer listede yok")
Bu değer listede var.
```
Aşağıdaki örnekte 5 elemanlı bir liste tanımlanmıştır. İndis numaralarını kullanarak, listenin 1. indisten
başlayarak, 3. indise kadar öge listesine aktarıp listeleme işlemi yapılmıştır.
```
liste = [1,2,3,4,5]
öge = listem[1:3]
print(öge)
[2,3]
```
**Örnek 10**
```
listem=[10,20,30,40,50]
eleman = listem[3]
print(eleman)
40
```
Örnek 10’da listem adında bir liste tanımlanarak 5 elemanlı ifade girilmiştir. Listem adlı liste için 3. indis
numarasına ait ifade eleman adlı değişkene atama işlemi yapılmıştır. Eleman adlı değişken de ekrana
yazdırılarak 40 sonucu elde edilmiştir.
**Örnek 11**
```
listem = [10,20,30,40,50]
eleman = listem[1:3]
print(eleman)
[20, 30]
```
Örnek 11’de listem adlı listede eleman adlı değişkene sadece 1 ve 2. indis numaralarının dâhil edildiği
3. indis numarasının dâhil edilmediği atama işlemi yapılmıştır. Eleman adlı değişken de ekrana yazdırılarak 20 ve 30 değerleri listelenmiştir.

**Örnek 12**
```
liste = [1,2,3,4,5,6,7,8,9,10]
print(liste)
# 1. eleman
print(liste[0])
# 6. eleman
print(liste[5])
# Baştan 5. indekse kadar (dahil değil)
print(liste[:5])
# 1.indisten 5.indise kadar
print(liste[1:7])
print(liste[5:])
print(liste[::2])
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
1
7
[1, 2, 3, 4, 5]
[2, 3, 4, 5, 6, 7]
[6, 7, 8, 9, 10]
[1, 3, 5, 7, 9]
```
Örnek 12’de, 10 elemanlı bir liste tanımlanmış ve indis numaraları kullanılarak ekrana listeleme işlemi
yapılmıştır.
Listelerde *negatif indisler* de kullanılabilir. Negatif indis numarası listenin sonuncu elemanından başlayarak sayıldığında (sondan başa) sıra numarasını verir. Örnek 13’te listenin sonuncu elemanına liste[-1]
olarak, sondan ikinciye ise [-2] olarak ulaşılır. Güle güle elemanı liste de -1.indis olarak görülmektedir.
Merhaba ise geriye doğru sayıldığında -4. indis’tir.
