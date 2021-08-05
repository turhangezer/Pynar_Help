# Modül 3 
# PYTHON'DA TEMEL FONKSİYONLAR

Programlama dillerinde fonksiyonlardan sıkça faydalanılmaktadır. Fonksiyonları kendimiz yazabilece-
ğimiz gibi, programlama dillerinin kütüphanelerinde bulunan hazır fonksiyonlar da kullanılabilir. Pyt-
hon’da pek çok hazır fonksiyon bulunmaktadır. Bunlara **yerleşik fonksiyonlar** da denilmektedir. Peki,neden fonksiyonlara ihtiyaç duyulmaktadır? Fonksiyonlar yapılan işlemleri kolaylaştırır ve zaman alıcı işlevleri kolay bir şekilde yerine getirilmesini sağlar. Bunun yanında **print( )** ve **input( )** gibi kullanıcıya bir çıktı vermek ve kullanıcıdan girdi almak için kullanılan, programlama dilinin olmazsa olmaz fonksiyonları vardır. Kullanıcıdan bir girdi almadan ya da yapılan işlemlerin sonucunu kullanıcıya vermeden
program yazmanın bir anlamı olmaz. Örneğin, kullanıcının vücut kitle indeksini hesaplamak için kul-
lanıcının boy ve kilo verisine ihtiyacımız vardır. Eğer kullanıcıdan bir girdi alınmazsa bu hesaplamayı
yapmak mümkün değildir.

Aynı şekilde yapılan işlemin sonucunu görmek için de sonucun ekranda görüntülenmesi, yani programın
kullanıcıya çıktı vermesi gerekmektedir.

Python’da konsola (etkileşimli kabuk) veriler yazdırmak istendiğinde **print( )** fonksiyonu, kullanıcıdan
bir girdi almak istendiğinde ise **input( )** fonksiyonu kullanılmalıdır. Ayrıca her iki fonksiyonun alacağı
parametreler ve/veya beraber kullanılabileceği fonksiyonlar bulunmaktadır.

Kullanıcıdan girdi alırken kimi zaman sayısal ifadeler (integer) kimi zaman da metinsel ifadeler (string)
istenebilir. Yani programın bir aşamasında kullanıcıdan ismini ya da yaşadığı şehri girmesi, başka bir
aşamasında ise yaş verisini alarak bununla ilgili işlem yapılabilir. Peki, Python girilen verinin sayısal
değer mi, yoksa metinsel bir ifade mi olduğunu nasıl anlayacak? İşte bu gibi durumlarda input( ) fonk-
siyonu ile beraber farklı fonksiyonlar da kullanılabilir.

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

**Örnek 1**

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
