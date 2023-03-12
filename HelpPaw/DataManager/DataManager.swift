//
//  DataManager.swift
//  HelpPaw
//
//  Created by Roman Lantsov on 09.03.2023.
//

import Foundation


class DataManager {
    static let shared = DataManager()
    
    let shelters = [
        Shelter(
            city: .moscow,
            name: "Муркоша",
            address: "Москва, ул. Осташковская, д. 14, стр. 2",
            animals: [
                Animal(
                    type: .cat,
                    name: "Рыбак",
                    age: 3,
                    description: "Терпение и труд Рыбака к счастью приведут. Ведь без терпенья и труда не выловить золотой рыбки из пруда. А нашему котику есть что рыбке сказать и какие три заветные желания загадать. Рыбаку бы лежанку самую теплую и пушистую, миску полную с кормом душистым, а главное — дом родной и любимый. Кто же выступит в роли золотой рыбки и поможет котику исполнить заветные желания?"
                ),
                Animal(
                    type: .cat,
                    name: "Кларисса",
                    age: 9,
                    description: "Быть можно дельным котофеем и думать о красе когтей. Кларисса невероятно деловая! Надо миски проверить, цветы фигурно понадкусывать, углы пухом утеплить, человека обмурчать, а потом, конечно, коготки. Коготками дельная Кларисса и бахрому красивую сделает, и все печали из душ человеческих выцарапает. В общем, вам с Клариссой безмерно повезёт!"
                ),
                Animal(
                    type: .cat,
                    name: "Бусс",
                    age: 2,
                    description: "Кто жил и мыслил, тот не может в душе не обожать котов! А не обожать Бусс – вообще выше человеческих сил. Только посмотрите: за полосочкой полоска и пробивающаяся рыжина, за пышностью щек красота глаз и усы вразлет. За первым взглядом – счастливая встреча и радостное знакомство. За вашей влюбленностью – поездка домой и долгая, счастливая мурчащая жизнь с Бусс."
                ),
            ]
        ),
        Shelter(
            city: .moscow,
            name: "Печатники Петс",
            address: "Москва, 5112-й Проектируемый пр-д, стр. 1-3",
            animals: [
                Animal(
                    type: .dog,
                    name: "Дана",
                    age: 6,
                    description: "Активная, смышленая, уверенная, добродушная, нежная, улыбающаяся, преданная – все это про нее. Дана – это вихрь позитива и энергии. Она дружелюбна к другим животным, обладает уравновешенным характером, прекрасно ведет себя на прогулке и послушно гуляет на поводке. А ещё Дана просто обожает детей и относится к ним очень деликатно."
                ),
                Animal(
                    type: .dog,
                    name: "Рэми",
                    age: 3,
                    description: "Рэми не только умен, но еще и красив, дружелюбен, активен. Всегда рад новым знакомствам. С Рэми однозначно будет легко и интересно, а при общении с ним складывается ощущение будто хвостатый знает вас всю жизнь. Дружок отлично знает свою кличку, и приходит по первому же зову; а также прекрасно гуляет на поводке. Ах, если бы было кому подать лапу и принести тапочки!"
                ),
                Animal(
                    type: .cat,
                    name: "Савушка",
                    age: 5,
                    description: "Сложно найти котика, который был бы так привязан к человеку. Савушка стоит у решетки с начала прихода волонтеров и до вечера, заглядывает в глаза и жалобно мяукает, желая пообщаться. Подходишь к нему, гладишь, берешь на руки – сразу затихает и начинает мурчать. Пытаешься объяснить: «Савушка, у нас много дел, мы не можем постоянно тебя гладить». Слушает. А отходишь – всё начинается заново. И так целый день!"
                ),
            ]
        ),
        Shelter(
            city: .moscow,
            name: "Добрая рука",
            address: "Москва, Грузинский вал, д. 7, стр. 3",
            animals: [
                Animal(
                    type: .cat,
                    name: "Версения",
                    age: 3,
                    description: "Котика не искать – радости не видать. А вам какая радость нужна? Может быть шоколадного оттенка, с глазками, похожими на два сладких печенья? Тогда вы ее уже нашли! Сладкая как тортик кошечка Версения готова щедро одарить вас лаской, теплом и конечно же замурчательным настроением! Кошечка с радостью отправится вместе с вами в домашнюю вселенную, наполненную светом и красотой, вы только приезжайте скорее и забирайте её туда!"
                ),
                Animal(
                    type: .dog,
                    name: "Люся",
                    age: 10,
                    description: "Люся — необычайно ласковая и добрая. Девочка готова вдохновлять всех вокруг на свершения и любознательность. За озорством и наивностью скрывается чуткость и отзывчивость, добрый и удивительно мягкий характер. Малышка любит жизнь и не упускает моменты радости: веселится с подружками, купается в речке, обнимается с волонтерами, любуется красотами природы."
                ),
                Animal(
                    type: .cat,
                    name: "Лосось",
                    age: 2,
                    description: "Увидишь Лосося, и глаза становятся завидущи, а руки загребущи. Потому что ухватить золотого зеленоглазого Лосося — это такая огромная удача, улов так улов! Великолепный, ослепительный кот мечты. Нужно брать! Приезжайте за своей золотой рыбонькой, забирайте холить Лосося и лелеять!"
                ),
            ]
        ),
        Shelter(
            city: .tumen,
            name: "Лучший друг",
            address: "Тюмень, Голышева, 1/1",
            animals: [
                Animal(
                    type: .dog,
                    name: "Тарзан",
                    age: 3,
                    description: "Тарзан неудержимый и сильный молодой пёс. Он станет хорошим другом и охранником для сильного уравновешенного человека. Кастрирован, привит."
                ),
                Animal(
                    type: .dog,
                    name: "Анфиса",
                    age: 3,
                    description: "Спокойная собака. Нет части лапы. Будет хорошей подругой для всех членов семьи, нужен заботливый хозяин. Стерилизована, привита."
                ),
                Animal(
                    type: .dog,
                    name: "Башмачок",
                    age: 2,
                    description: "Кобель 2-3г. Очень спокойный, добрый, послушный, скромный пес среднего размера. Кастрирован, привит."
                ),
            ]
        ),
        Shelter(
            city: .krasnodar,
            name: "Краснодог",
            address: "Краснодар, ул. Куйбышева, 2",
            animals: [
                Animal(
                    type: .dog,
                    name: "Грейси",
                    age: 2,
                    description: "Очень ласковая собачка, с хорошо прослеживающейся ноткой любопытства. Ей интересно все вокруг, обязательно надо все изучить, обнюхать, в некоторых ситуациях даже облизать. Например, она жаждет запечатлеть свой поцелуй на человеке, который хоть как-то проявил по отношению к ней заботу и чуточку нежности. Такая вот Грейси любвеобильная. Легко идет на контакт, прекрасно взаимодействует с людьми. Собачка ведет себя крайне порядочно и спокойно. Приглашаем вас на знакомство с этой обаяшкой! Она вас очень ждет!"
                ),
                Animal(
                    type: .cat,
                    name: "Идея",
                    age: 1,
                    description: "Неравнодушные люди увидели кошечку, которая хромала и решили доставить её в приют. При осмотре ей диагностировали травму лапы. Кошечке дали кличку Идея и теперь ей предстоит пройти курс лечения у нас. Курс лечения окончен!"
                ),
                Animal(
                    type: .cat,
                    name: "Бусина",
                    age: 2,
                    description: "Девушка увидела кошечку, которая мяукала и решила сразу доставить её в приют. При осмотре кошечке диагностировали черепно-мозговую травму и дали кличку Бусина. Теперь ей предстоит пройти лечение у нас. Курс лечения окончен!"
                ),
            ]
        ),
        Shelter(
            city: .tumen,
            name: "Мурка и Васька",
            address: "Тюмень, Харьковская, 85а — 1 этаж",
            animals: [
                Animal(
                    type: .cat,
                    name: "Леопольд",
                    age: 9,
                    description: "Имя самого доброго в мире мультяшного кота просто так не дают! Котик очень славный и ласковый. Возраст приблизительно 9-10 лет. К лотку приучен, привит и кастрирован, кушает всё. Стареньким котикам тоже хочется жить дома, а не в приюте!"
                ),
                Animal(
                    type: .cat,
                    name: "Варежка",
                    age: 2,
                    description: "Варежка просто совершенство в каждой шерстинке. Смотришь на нее и восхищаешься. Ухаживаешь за ней и думаешь – королева!Играешь с ней и понимаешь – какой ласковый она ребёнок. Любишь ее и осознаешь – лучшая кошка! "
                ),
                Animal(
                    type: .cat,
                    name: "Марвел",
                    age: 2,
                    description: "Изящный мягкий чёрный котик по имени Марвел. Мальчишке два-три годика. Ждёт любящих хозяев. Кот привит, кастрирован, кушает всё, туалет - в лоток. Добрый, ласковый, но серьёзный - настоящий мужчина."
                )
            ]
        ),
        Shelter(
            city: .krasnodar,
            name: "Вишневский приют для животных",
            address: "Краснодар, ул. Солнечная, 58",
            animals: [
                Animal(
                    type: .cat,
                    name: "Лохматик",
                    age: 2,
                    description: "Кто любитель советского доброго фильма Приключения Электроника? У нас есть молодой пёс, очень похож на собачку из этого сериала! Добрый, шустрый Лохматик! Очень смешной мальчик! Особенно хорошо будет пристроить в семью с детьми, так как очень игривый и общительный! Будет верным другом для ваших детей! А общение с собакой научит детей ответственности и верности! Отмыть и причесать нашего Лохматика ну чем не кинозвезда?!"
                ),
                Animal(
                    type: .cat,
                    name: "Маркиза",
                    age: 2,
                    description: "Ищет заботливые руки и ответственного человека или целую добрую семью кошечка Маркиза. Красавице 1,5 года. Она здорова, обработана от паразитов, стерилизована, приучена к лотку. Маркиза спокойная, добрая и ласковая кошечка. Мечтает быть нужной и очень любимой. Если Вы готовы подарить счастье этой чудесной девочке, то звоните и приезжайте знакомиться."
                ),
                Animal(
                    type: .cat,
                    name: "Барсик",
                    age: 1,
                    description: "Помесь с шотландцем. Здоров, очень игрив, ласков, научился громко муррррчать. Поставлена первая вакцина. Возьмите маленькую радость в дом!"
                ),
            ]
        ),
        Shelter(
            city: .tumen,
            name: "МКУ 'ЛесПаркХоз'",
            address: "Тюмень, ул.Кедровая, 133",
            animals: [
                Animal(
                    type: .cat,
                    name: "Дотти",
                    age: 2,
                    description: "Спокойная, но и в обиду себя не даст. Больше любит проводить время сама по себе) Создана для того, чтобы ей любоваться. С кошками Дотти на расстоянии, предпочитает быть единственной и неповторимой."
                ),
                Animal(
                    type: .cat,
                    name: "Катавина",
                    age: 3,
                    description: "Катавина - не кошка, а песня! Ласковая, нежная, она готова быть рядом с Вами 24/7. Любит спать рядом, делать массажик, тихо рядышком свернется клубочком и будет греть вас в осенних прохладный вечер! Любит поиграть, но больше - полежать в обнимку. С лотком - никаких проблем. Катавина очень ждет хозяина!"
                ),
                Animal(
                    type: .cat,
                    name: "Лидвигия",
                    age: 2,
                    description: "Роскошная, харизматичная особа с претензией на породу. Метис шотландской, возраст 2 года, стерилизована, обработана от паразитов, уживается с кошками и собаками."
                ),
            ]
        ),
        Shelter(
            city: .krasnodar,
            name: "Южный",
            address: "Краснодар, 1-я Дорожная ул., 21",
            animals: [
                Animal(
                    type: .dog,
                    name: "Бимасик",
                    age: 1,
                    description: "Бимасик, здоровый, умный щенок с очень необычной внешностью Любит всё и всех вокруг, особенно играть в мячик и учить новые команды. Территориально пёсик сейчас в Пятигорске."
                ),
                Animal(
                    type: .dog,
                    name: "Арабика",
                    age: 2,
                    description: "Арабика потеряла веру в людей. Очень много боли и страданий удалось пережить этой молодой собачке, чтобы разочароваться в нас. Малышка полностью разучилась доверять, а каждое движение человека она воспринимает как угрозу своей жизни. В этом маленьком тельце прячется обиженный щенок, в жизни которого не было и дня счастья. Только боль и обида. Ценою жизни стала потерянная лапка, но не это беспокоит Арабику. Её беспокоит ожидание психологической боли вновь, ведь она уже знает, что человек может быть ужасным. Конечно же Арабике нужна семья, но это должна быть настоящая семья, наполненная любовью и заботой. Только так собачка научится доверять."
                ),
                Animal(
                    type: .dog,
                    name: "Тиграша",
                    age: 6,
                    description: "Тиграша - добрая, застенчивая красотка, очень ласковая. Она ждет дня, когда станет домашней любимицей. И для этого у нее есть все задатки. Тиграша легко уживается с любыми другими собаками, подойдет для семьи с детьми. Добродушна и ориентирована на человека. Спокойна и терпелива. Тиграша практически всю жизнь провела в приюте, но не потеряла веру в лучшее. Она все также по-щенячьи трогательно смотрит в глаза, доверяет людям и старается вложить всю душу в каждую встречу. Может быть, в вашем сердце есть место для большой любви и настоящей дружбы? Тиграша ждет свою Семью! На данный момент Тиграша здорова. Привита, стерилизована, обработана от паразитов. Приучена к поводку."
                ),
            ]
        ),
        Shelter(
            city: .stPeterburg,
            name: "Потеряшка",
            address: "Санкт-Петербург, Лиговский проспект, д. 291",
            animals: [
                Animal(
                    type: .dog,
                    name: "Мишута",
                    age: 1,
                    description: "Отдается маленький и пушистый комочек счастья! Очень милая и ласковая девочка."
                ),
                Animal(
                    type: .dog,
                    name: "Пашка",
                    age: 1,
                    description: "Красивых триколорный щенок ищет новую семью."
                ),
                Animal(
                    type: .dog,
                    name: "Пушок-Рыжик",
                    age: 7,
                    description: "Пушок остался совсем один после смерти своей старенькой хозяйки, родственники его тоже не смогли взять и таким образом он попал к нам."
                )
                
            ]
        ),
        Shelter(
            city: .stPeterburg,
            name: "Верность",
            address: "Санкт-Петербург, ул. Мира, д. 5",
            animals: [
                Animal(
                    type: .dog,
                    name: "Рокки",
                    age: 1,
                    description: "Рокки, метис, кастрирован, чипирован."
                ),
                Animal(
                    type: .dog,
                    name: "Гром",
                    age: 6,
                    description: "Ищет дом Гром, метис. Может ладить с другими собаками, любит детей"
                ),
                Animal(
                    type: .dog,
                    name: "Бонита",
                    age: 5,
                    description: "Кавказская овчарка, КО Кастрирована, чипирована, привита"
                ),
            ]
        ),
        Shelter(
            city: .stPeterburg,
            name: "Ржевка",
            address: "Санкт-Петербург, Ржевка, ​ул. Поселковая, д. 9",
            animals: [
                Animal(
                    type: .cat,
                    name: "Дарси",
                    age: 3,
                    description: "Ласковый мальчик, выглядит как подросток."
                ),
                Animal(
                    type: .cat,
                    name: "Хэйли",
                    age: 10,
                    description: "Привита, стерильная, ходит в лоток с древесным наполнителем, дружит с другими кошками."
                ),
                Animal(
                    type: .cat,
                    name: "Дюка",
                    age: 5,
                    description: "Ходит в лоток с древесным наполнителем. Кастрирована, привита."
                ),
            ]
        ),
        Shelter(
            city: .ekaterinburg,
            name: "Кот Леопольд",
            address: "Екатеринбург,ул. Советская, дом 29.",
            animals: [
                Animal(
                    type: .cat,
                    name: "Гришка",
                    age: 3,
                    description: "Возраст около 3-х лет, очень ласковый общительный, любит общество человека, готов постоянно сидеть на ручках, с другими кошками осторожен, побаивается, но не агрессивен. Кастрирован, приучен к лотку, лоток минеральный наполнитель на 5+, корм Роял Канин для стерилизованных."
                ),
                Animal(
                    type: .cat,
                    name: "Вислоушка",
                    age: 2,
                    description: "Миниатюрная, черная кошечка, ранее домашняя и ко всему приучена. Скромная, нежная и очень спокойная. Подойдет в семью с детьми и животными. Прекрасно знает лоток с древесным наполнителем."
                ),
                Animal(
                    type: .cat,
                    name: "Джини",
                    age: 2,
                    description: "Она такая искренняя и добрая, непринуждённая, любой мусор может стать игрушкой, готова часами лежать и облизывать хозяина, от удовольствия легонько кусается. Молодая, активная, кошек слегка боится, но уживается."
                ),
            ]
        ),
        Shelter(
            city: .ekaterinburg,
            name: "Mia Life",
            address: "Екатеринбург,ул. Генерала Белова, дом 33.",
            animals: [
                Animal(
                    type: .dog,
                    name: "Хабар",
                    age: 2,
                    description: "расивый, жизнерадостный пёс с непростой судьбой. Его нашли в районе Хромпика травмированным, попал под поезд. Получил травму лапы и глаза.Всю необходимую помощь ему оказали. Но, к сожалению, Хабар останется с хромой лапкой (сустав не сгибается). И один глазик у Хабара не видит.Вот такая печальная история..Несмотря на всё это, Хабар - весёлый, позитивный, дружелюбный пёс. Ему очень нужен дом и надёжный хозяин."
                ),
                Animal(
                    type: .dog,
                    name: "Спарта",
                    age: 1,
                    description: "Спарта - необычная собака. Есть предположение, что помесь хаски и стаффорда, но это - не точно И внешность у неё тоже необычная: глаза разного цвета, голубой и карий, тело сильное и крепкое, действительно, как у стаффорда, и окрас интересный. Каких бы кровей ни была Спарта, она очень нуждается в доме и хозяйке! Да-да, именно хозяйке! Спарта, 1 год. Дело в том, что Спарта выросла в неблагополучной семье, в асоциальных условиях, увы... Хозяин плохо с ней обращался, натравливал её на людей и других животных Из-за чего Спарта теперь люто ненавидит мужчин... Вот как-то так Поэтому нашей Спарточке нужна женская опытная рука"
                ),
                Animal(
                    type: .dog,
                    name: "Тонио",
                    age: 1,
                    description: "Многие мечтают видеть в качестве своего друга и охранника собаку - овчарку. Предлагаем вашему вниманию красавчика, умнягу и ооочень славного парня - Тонио. Тонио хоть и не чистокровный немец, но так похож, что сразу и не поймёшь! Парень спокойный, умный и преданный. Тонио станет верным спутником по жизни своему хозяину. Все у Тонио хорошо."
                )
            ]
        ),
        Shelter(
            city: .ekaterinburg,
            name: "Марс",
            address: "Екатеринбург,ул. Пархоменко, дом 97",
            animals: [
                Animal(
                    type: .cat,
                    name: "Карамель",
                    age: 1,
                    description: "Знакомьтесь Карамель, еще совсем кроха с нелегкой судьбой, но добрым сердцем. Как и полагается, после карантина мы ее забрали к нам и очень рады, что несмотря на такое отношение, она осталась доверчивой девочкой, с замечательным характером."
                ),
                Animal(
                    type: .dog,
                    name: "Хан",
                    age: 2,
                    description: "Хан– поражает воображение! Большой, мускулистый красавец точно не оставит Вас равнодушными. Темпераментный мужчина ищет ласковые ручки для серьезных отношений! Он молод (около 2 лет), свеж как апельсиновый фреш и чертовски обаятелен. "
                ),
                Animal(
                    type: .cat,
                    name: "Мун",
                    age: 2,
                    description: "Муня реагирует на других животных абсолютно никак, к человеку женского пола относится без особой теплоты. Дается в руки под настроение. Чистоплотна, в еде не привередлива, здорова и стерилизована. Характер точно такой, какими изображают кошек в книгах - себе на уме"
                ),
            ]
        ),
        Shelter(
            city: .nizhnyNovgorod,
            name: "Планета кошек",
            address: "г. Нижний Новгород, ул Дальняя, д. 8, помещ.",
            animals: [
                Animal(
                    type: .cat,
                    name: "Шанти",
                    age: 2,
                    description: "Эта очаровательная девушка достойна именно такого приветствия! Шанти - настоящая леди-кошка, спокойная, ненавязчивая, с отличными манерами и знающая себе цену. У малышки нет недостатков, кроме одного: она - единоличница, и может жить в семье, где будет единственной любимицей, без других кошек."
                ),
                Animal(
                    type: .cat,
                    name: "Лаванда",
                    age: 1,
                    description: "Эта кошечка готова ко встрече со своими будущими хозяевами! Она ласковая, молодая и задорная! Посмотрите в эти грустные красивые глазки и скорее пишите нам в личные сообщения группы или звоните по телефону, чтобы подробнее узнать о ней и стать для неё целым миром, т.е. семьёй. Лаванда очень ждёт ВАС!"
                ),
                Animal(
                    type: .cat,
                    name: "Тыковка",
                    age: 1,
                    description: "Тыковка получила имя за оранжевые глазки-тыковки и близость к главному празднику всех черных кошек - Хеллоуину. Эта милая девушка с блестящей гладкой шерсткой, огненными глазками и в милых белых сапожках очень ждёт своего человека, чтобы подарить ему свое огненное сердечко, всю нерастраченную любовь и нежность."
                ),
            ]
        ),
        Shelter(
            city: .nizhnyNovgorod,
            name: "Подари жизнь",
            address: "г. Нижний Новгород, ул. Доватора, подъезд 2А,",
            animals: [
                Animal(
                    type: .dog,
                    name: "Лаки",
                    age: 5,
                    description: "Симпатяжка ждёт долго, пошёл уже третий год, девочка не видела ничего, кроме вольера. Попала она к нам вместе с сёстрами в четыре месяца с переломанным тазом, прошла операцию и полностью восстановилась. Девочка очень ласковая, общительная, умная, готова всю себя отдать полюбившему еë человеку! Собачка небольшого размера, стерильная, привита (комплекс, бешенство), обработана."
                ),
                Animal(
                    type: .cat,
                    name: "Ванесса",
                    age: 1,
                    description: "Красотка-статуэтка Ванесса очень ждёт свою ответственную семью. Девочка вместе с другими котятами была выброшена на огородах замерзать, мы забрали малышей на передержку приëмника, огромное спасибо нашей волшебнице Надежде Ф. Остальные котятки уже все в новых семьях, а Ванесса ждëт! Она контактная и ласковая, сообразительная и аккуратная, ходит в лоток, приучена к когтеточке, привита. Отлично уживается с другими кошками и маленькими собачками."
                ),
                Animal(
                    type: .dog,
                    name: "Баранка",
                    age: 5,
                    description: "Нежная и трогательная молодая собачка Баранка очень ждëт свою семью в приëмнике второй год. Вместе с сестрой Рыжулей еë забрали из ужасных условий в городе. Девочка с изюминкой, коей является пушистый, очаровательный хвостик! Баранка очень ласковая и контактная девочка, очень любит людей, отлично уживается с другими собаками. Как показала еë сестра Рыжуля, которая теперь в любящей семье, поведение дома у этих собак отличное! Рыжуля отлично ведёт себя в квартире, хорошо ходит на поводке, не хулиганит, подружилась с кошкой, Баранка по характеру такая же!"
                ),
            ]
        ),
        Shelter(
            city: .nizhnyNovgorod,
            name: "Звериное счастье",
            address: "г. Нижний Новгород, ул. Фрезерная, 6",
            animals: [
                Animal(
                    type: .cat,
                    name: "Персик",
                    age: 1,
                    description: "Активный, бегающий-прыгающий! Кастрированы. Лоток на отлично. Кушают хороший промокорм и обожают мясо и творог. Мы ждём для них добрые руки."
                ),
                Animal(
                    type: .cat,
                    name: "Зося",
                    age: 1,
                    description: "Зося совсем молоденькая, миниатюрная нежная тигруля с красивыми умными глазами. Она немного трусишка, но привыкает к рукам своего человека и очень хочет быть домашней радостью"
                ),
                Animal(
                    type: .dog,
                    name: "Лилу",
                    age: 1,
                    description: "Лилу удалось социализировать, отлично ладит с людьми, с другими животными, стерилизуем по возрасту за свой счет, будет небольших размеров, подойдет как для квартиры, также и для частного дома без цепи! Отдадим только в ответственные руки! Давайте все вместе подарим этим ребятишкам счастливую жизнь, ведь не так много им для счастья нужно! Мальчик и девочка нуждаются в социализации, если у вас есть такая возможность нам помочь, звоните, мы будем очень благодарны Вам!"
                )
            ]
        )
    ]
    private init() {}
}
