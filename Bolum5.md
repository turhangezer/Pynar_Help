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

 
||||
| ------------- |:-------------:| -----:|-----:|
| Başlangıç      |    |   |Bitiş(Uzunluk-1)|
| Harfler[0]      | Harfler[1]      |   Harfler[2] | ... |


