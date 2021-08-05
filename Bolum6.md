# Modül 6 
# DÖNGÜ YAPILARI

Bu bölüme kadar yapılan uygulamalar tek seferde çalışmaktadır. Örnek olarak 50 sayının ortalamasını
almak istendiğinde, 50 sayıyı kullanıcıdan alarak her birini bir değişkene atamak, sonra da bu sayıların
ortalamasının bulunması gerekiyordu. 50 sayı değil de bin adet sayının ortalamasını bulmak istersek bu
iş daha da zorlaşacaktır.
Döngüler, istenen kodların belirli sayı veya koşullar sağlandığı sürece tekrar tekrar çalıştırılması temeline
dayanır. Burada tekrarlama işlemi belirli sayıda olursa **for döngü yapısı**, belirli koşullara bağlı tekrar
söz konusu ise **while döngü yapısı** tercih edilir. Örnek verilecek olursa her sabah güneş doğar ve her
akşam güneş batar. Bu işlem süreklilik arz etmektedir.

![image](https://user-images.githubusercontent.com/56341239/128348610-25d701b9-9ee8-48cb-826b-75a86122c219.png)

**Şekil 6.2:** Döngü Yapısı

Yukarıdaki şekilde koşul sağlandığı sürece döngü devam edecektir. Ne zaman ki koşul şartı gerçekleşmezse o durumda döngüden çıkılacaktır.
Python’da **while** ve **for** döngüleri olmak üzere iki tür döngü bulunur.

## 6.1. While Döngüsü
While döngüsü, koşul gerçekleştiği sürece çalışan bir döngü çeşididir. Genellikle döngünün kaç defa
çalışacağı belirli değilse while döngüsü tercih edilir. Ancak koşullar verilerek de while döngüsünün belirli
sayıda çalışması sağlanabilir. Döngülerde koşullu ifadelerde olduğu gibi blok yapısı kullanılmaktadır.
while ifadesinden sonra koşul durumu yazılır, ardından iki nokta işareti konularak alt satıra geçilir. Koşul
durumu sağlandığı sürece çalışacak kodlar bir blok içeriden çalışır.
while (koşul durumu):
 1. adım
 2. adım
 3. adım
 .
 .
Bu durum bir örnekle incelenmek istenirse,

**Örnek 1**

```python
# şartın başlangıç değeri
sayac=1
#sayac 6 dan küçük olduğu sürece
while sayac<6:
 print("merhaba dünya")
 sayac=sayac+1
merhaba dünya
merhaba dünya
merhaba dünya
merhaba dünya
merhaba dünya
```
Örnek 1’de sayaç isimli değişkenin değeri 1’den başlamış, yine değişken değeri 6’dan küçük olduğu
sürece konsol üzerinde “merhaba dünya” yazılır. Sayacın değeri 1 arttırılarak döngünün başına döner
ve sayaç değeri 6’ya eşit olana kadar bu durum devam eder. Aynı işlemi ekrana sayaç isimli değişkenin
değeri yazılarak yapmak istenirse,

**Örnek 2**

```python
sayac=1
while sayac<6:
 print(sayac)
 sayac=sayac+1
1
2
3
4
5
```
### 6.1.1. Döngünün Kapsamı
Hatırlanacağı üzere döngü koşulunun sağlandığı sürece daha içteki bloklarda bulunan kodların çalışacağı belirtilmişti. Döngü bittiği zaman Python bir üstteki bloğa dönerek çalışmasına devam eder.

**Örnek 3**

```python
# şartın başlangıç değeri
sayac=1
#sayac 6 dan küçük olduğu sürece
while sayac<6:
 print(sayac)
 sayac=sayac+1
#döngü bittiği zaman
print("döngü sonlandı")
1
2
3
4
5
döngü sonlandı
```
while döngüsü ile çalışırken sık yapılan hatalardan birisi döngü içerisinde koşulu sağlayan değişkenin
değerini arttırma işleminin unutulmasıdır. Bu durumda koşul sürekli sağlanacağı için döngü sürekli çalışır ve dışarıdan bir müdahale ile sonlandırılması gerekir.

**Örnek 4**

```python
sayac=1
while sayac<6:
 print(sayac)
Yukarıdaki örnekte bilinçli olarak sayaç isimli değişkenin değeri arttırılmamıştır. Uygulamayı çalıştırıldığında görüleceği üzere program hiç durmadan çalışacak ve ekrana sürekli 1 değeri yazacaktır. Bu işlem
sırasında klavyeden “ctrl + c” tuşuna basarak Python’a kesme gönderebilir ve uygulama sonlandırılabilir.
**Örnek 5**
while döngüsü kullanarak 1-100 arasındaki (100 dâhil) çift sayıları bularak ekrana yan yana yazan
programı yazınız.
a=1
while a<=100:
 if a%2==0:
 print(a,end=",")
 a=a+1
2,4,6,8…..,100
```
**Örnek 6**

while döngüsü kullanarak 1 – 100 arasındaki sayıların toplamını bulan programı yazınız.
```python
toplam=0
i=1
while i<=100:
 toplam=toplam+i
 i=i+1
print("sayıların toplamı",toplam)
sayıların toplamı 5050
```
Örnek 6’da yapılan işlemde toplam isimli bir değişken oluşturularak başlangıç değeri 0 olarak belirlenmiştir. Çünkü toplam değerini hesaplarken toplam=toplam+i şeklinde bir işlem yapılmaktadır.
Eğer toplam tanımlı olmasaydı, tanımlanmamış_değer=tanımlanmamış_değer+sayı şeklinde bir işlem yapılmaya çalışacak ve hata verecekti. Yani bir değişken ile işlem yapılmadan önce tanımlanması
gerekmektedir.

### 6.1.2. While True – Break İfadeleri ve Sonsuz Döngüler

Program yazarken bazen döngünün ne zaman sonlanacağı bilinmeyebilir. Örnek olarak bir markette
müşterilerin alışveriş yaparak sepetlerini doldurdukları ve sepette kaç adet ürün olduğu bilinmeyebilir.
O müşteriye ait tüm ürünler barkod okuyucu ile okutulmalı ve toplam tutar hesaplanmalıdır. İşte bu gibi
belirsiz durumlar için while döngüsü ile beraber **True** ifadesi ya da benzer yapılar kullanılabilir. **Break**
ifadesi ise döngü sürekli çalışırken istenilen bir anda döngüden çıkmak için kullanılır.

**Örnek 7**

```python
i=1
while True:
 print(i)
 i+=1
 if i==6:
 break
print("döngü sonlandı")
1
2
3
4
5
döngü sonlandı
```
while döngüsü ile kullanılan True ifadesinin yerine farklı kullanımlarla da karşılaşılabilir. Örneğin, bir
alışveriş yapıldığını ve sürekli ürün girişi yapıldığını düşünülürse “q” harfi girilene kadar yapılan alışverişler listeye eklensin, eğer “q” harfi girilirse döngüyü sonlandırılsın.

**Örnek 8**

```python
liste=[]
while 1:
 ürün=input("ürün adı giriniz:")
 if ürün=="q":
 break
 liste.append(ürün)
print("girdiğiniz meyveler:",liste)
ürün adı giriniz:elma
ürün adı giriniz:armut
ürün adı giriniz:peynir
ürün adı giriniz:su
ürün adı giriniz:q
girdiğiniz meyveler: ['elma', 'armut', 'peynir', 'su']
```
**Örnek 9**

while döngüsü kullanarak sayı tahmin oyunu yapınız. Kullanıcıdan 1-100 arası bir sayı istenmektedir.
Girilen sayı, tahmin edilen sayıdan büyükse daha küçük bir sayı girmesi, büyükse daha küçük bir sayı
girmesi istensin. Kullanıcı sayıyı bulana kadar bu işlem tekrar etsin. Ayrıca bir sayaç eklenerek kaç defa
da tahmin ettiğini bulunuz.

```python
Sayi=45
sayaç=0
print("1-100 arası bir sayı tuttum tahmin et")
while 1==1:
 sayaç+=1
 cevap=int(input("1-100 arası bir sayı girin: "))
 if cevap>sayi:
 print("daha küçük bir sayı girmelisin")
 elif cevap<sayi:
 print("daha büyük bir sayı girmelisin")
``` 