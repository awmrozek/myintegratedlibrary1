# Robimy płytkę drukowaną

***Ten tekst był automatycznie tłumaczony najpierw na polski, potem angielski, potem znowu na polski... Zobacz też: Głuchy telefon w Google Translate. A zdjęcia są moje, tylko jakiś komputer usunął tło***

Tutaj staramy się stworzyć bibliotekę komponentów dostępną dla studentów i wszystkich zainteresowanych projektowaniem sprzętu. Dzięki tej bibliotece będziesz mógł tworzyć zarówno proste, jak i nieco bardziej złożone projekty. Jeśli nie wiesz, do czego służy płytka drukowana, poczytaj.

Dokładnie tę płytkę PCB stworzyłem na zajęciach w szkole, ale hej, robiłem już takie płytki. To najpiękniejsza płytka, jaką kiedykolwiek stworzyłem.

![Tu zdjęcie najładniejszej płytki](doc/etfpcb.jpeg)

A tę płytkę zrobiłem całkiem sam:

![Tu zdjęcie także ładnej płytki](doc/atmegacard_nobg.jpeg)

I taką płytkę postaramy się zrobić w tym... hmm... na tej stronie.


# Punkt wyjścia: Tworzenie płytki PCB

Możemy rysować płytki PCB ręcznie. Serio, są do tego markery, ale nie będziemy ich używać, ponieważ układ, którego używam, jest zbyt skomplikowany. Chcemy podłączyć mikrokontroler do naszego projektu, a ścieżki są zbyt małe, aby rysować je ręcznie.


## Projektowanie schematu


Projektując elektronikę, zawsze podziwiam mojego mentora, CC., jest on bardzo biegły w tworzeniu i budowaniu prototypów testowych. Kiedy budowaliśmy, celowaliśmy w gwiazdy. Niektórzy mądrzy ludzie mawiają, że stojąc na osiach gigantów, nie widać nic poza chmurami, ale wtedy nie przejmowaliśmy się tym zbytnio.



Opowiem, jak kiedyś tworzyliśmy płytki drukowane za pomocą profesjonalnego zestawu narzędzi Altium Designer i zagłębimy się w temat, wykorzystując dostępne komponenty. My robiliśmy to tak: Najpierw stworzyliśmy bibliotekę komponentów, ponieważ komponenty dostępne w programie nie zawsze są tymi, które mamy pod ręką. Często zdarza się, że komponenty pochodziły ze złomu i były niestandardowe. Ale kiedy jest się studentem, trzeba oszczędzać na wszystkim. Czasami w moje ręce wpadł zestaw chipów o nieznanym zastosowaniu. Było to bardzo ciekawym doświadczeniem – połączyć, poczytać w dokumentacji i zobaczyć jak działa.



Zaczniemy więc od stworzenia biblioteki komponentów. Wewnątrz biblioteki będziemy mieli schematy i footprinty. Skompilujemy bibliotekę za pomocą Altium i wykorzystamy te komponenty w naszym projekcie. Umieścimy i wytrasujemy footprinty oraz wyprodukujemy płytkę PCB metodą fotochemiczną. To trudny proces, ale wierzę, że nauczysz się większości z niego i zrozumiesz związane z nim wyzwania.



# Projektowanie PCB



## Proces produkcyjny: Fotochemia i zamawianie od dostawcy



Produkcja PCB z wykorzystaniem fotochemii ma tylko jeden sensowny scenariusz: gdy potrzebujesz płytki naprawdę szybko (maksymalnie 1-2 dni). Zazwyczaj łatwiej jest zamówić PCB online, ale chcę podzielić się swoją historią, więc zrobimy to tak, jak robiłem to wcześniej. Uwaga, spoiler: to zajmie dużo czasu (zajęło mi kilka wieczorów, zanim zrozumiałem wszystkie parametry), ale zobaczysz, ile wysiłku wymaga wyprodukowanie pojedynczej płytki PCB. Jeśli chcesz zrobić pojedynczą płytkę PCB w domu, przejdź do sekcji „Alternatywne źródła” i pomiń metodę fotochemiczną.

## Metoda fotochemiczna



Niebezpieczeństwo: Ta metoda jest potencjalnie niebezpieczna, ponieważ narazisz się na działanie kwasów. Chociaż nie zabiją Cię, mogą zrobić duże dziury w ubraniach, a przynajmniej je pożółknąć.



Jeśli trafisz tutaj, pobrudzisz sobie ręce. Do wykonania płytki PCB potrzebne będą następujące materiały: - Laminat PCB - Papier projekcyjny (użyj papieru do drukarek atramentowych; nie będzie działać z drukarkami laserowymi) - NaOH - Etsmedel - Ubrania (na wypadek plam)

## Wydrukuj obwód na folii plastikowej


Musimy zacząć od wydrukowania obwodu na folii plastikowej. Altium drukuje za pomocą Output Print Jobs, a każde zadanie jest plikiem. Musimy utworzyć zadanie wydruku w Altium i użyć drukarki, aby wydrukować je na folii. Alternatywne źródła



Aby uzyskać PCB z mniejszym wysiłkiem, wypróbuj jedną z poniższych usług online: jlcpcb.com lub pcbway.com. Prawdopodobnie istnieją inne popularne (lepsze?) usługi. Jeśli znasz takie usługi, daj mi znać. Korzystałem z jlcpcb z dobrymi wynikami i są one dość tanie (200 SEK za zestaw 5 małych płytek PCB, wliczając wysyłkę). Prawdopodobnie będziesz musiał założyć konto na tej stronie, więc przygotuj tymczasowe konto e-mail.



## Montaż: Lutowanie komponentów



Dotarliśmy do momentu, w którym mamy PCB w rękach. Teraz czas na lutowanie komponentów do płytki. Jeśli masz wolne laboratorium, postaraj się użyć łatwo dostępnych komponentów. Możesz je również zamówić u dystrybutora. Ja używam kilku dobrych (nie dostaję za to pieniędzy, może powinienem).



# Pisanie i wgrywanie kodu początkowego


Zbudowana przez nas płytka posiada port JTAG, który służy do debugowania, wgrywania i pobierania danych do/z mikrokontrolera. Użyjemy JTAG do wgrania skompilowanego kodu C do mikrokontrolera. Używam Atmel Studio (obecnie Microchip Studio). Z jakiegoś dziwnego powodu wolę wersję 7 – mam instalator offline i działa on bez zarzutu.


Zaczynamy od sprawdzenia, czy nasza płytka PCB komunikuje się z komputerem. Możemy to zrobić w Atmel Studio.

Ciąg dalszy nastąpi...