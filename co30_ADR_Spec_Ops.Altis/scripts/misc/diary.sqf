/*
  Author: Quiksilver
  Description:
  Created: 26/11/2013.
  Last modified: 25/01/2015.
  Coded for I&A and hosted on allfps.com.au servers.
  You may use and edit the code.
  You may not remove any entries from Credits
  without first removing the relevant author'rs/contributors.
  You may not remove the Credits tab, without consent of Ahoy World or allFPS.
  Feel free to re-format or make it look better.
  Usage:
  Search below for the diary entries you would like to edit.
  DiarySubjects appear in descending order when player map is open.
  DiaryRecords appear in ascending order when selected.
  Credit:
  Invade & Annex 2.00 was developed by Rarek [ahoyworld.co.uk] with hundreds of hours of work
  The current version was developed by Quiksilver with hundreds more hours of work.
  Contributors:
  Razgriz33 [AW], Jester [AW], Kamaradski [AW], David [AW], chucky [allFPS].
  Please be respectful and do not remove credits.
*/
if (!hasInterface) exitWith {};
waitUntil {!isNull player};

player createDiarySubject ["rules", "Правила"];
player createDiarySubject ["teamspeak", "Тимспик"];
player createDiarySubject ["changelog", "История"];
player createDiarySubject ["credits", "Создатели"];
player createDiarySubject ["info", "Информация"];

//Правила
player createDiaryRecord ["rules",
[
"Пункт 10.",
"
<br />
<font size='14' color='#4499CC'>
Запрещено занимать наградную технику, заранее не получив разрешения от её владельцев.
</font>
<br /><br />
Право на наградную технику имеют игроки принимавшие непосредственное участие в выполнении соответствующего задания.
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 9.",
"
<br />
<font size='14' color='#4499CC'>
Запрещено игнорировать свои обязанности согласно выбранной штатной специальности.
</font>
<br /><br />
В частности, если миссия на сервере имеет классовые ограничения на функции или конкретные вещи инвентаря. В большинстве случаев, в списке критически-важных ролей всегда есть:
<br /><br />
• Медик — лечит и поднимает раненых;
<br />
• Инженер — ремонтирует морскую, наземную и авиатехнику;
<br /><br />
<font size='10' color='#BECEDA'>
Примечание: Сервер это общая игровая площадка, а не место для частных тренировок. Для обучения, в разделе УЧИТЬСЯ есть неплохой набор курсов, а для практики у вас в распоряжении РЕДАКТОР миссий, где вы можете бродить по песочнице без забот об обязательствах, вытекающих из совместных режимов.
</font>
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 8.",
"
<br />
<font size='14' color='#4499CC'>
Запрещено игнорировать запросы по радиосвязи или чату игры от администрации и игроков.
</font>
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 7.",
"
<br />
<font size='14' color='#4499CC'>
Запрещено использование багов игры.
</font>
<br /><br />
О замеченных багах следует сообщать в первую очередь администрации сервера (TEHGAM), а при надобности и самим разработчикам игры (BIS) и/или авторам конкретной миссии.
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 6.",
"
<br />
<font size='14' color='#4499CC'>
Запрещено использование сторонних программ изменяющих нормальный игровой процесс.
</font>
<br /><br />
Таким же образом, не допустимо применение любых методов взлома, в целях получения несправедливого преимущества либо нарушения общего порядка:
<br /><br />
6.1.  Чит-коды;
<br />
6.2.  Обход системы BattleEye;
<br />
6.3.  Модульные чит-моды и т. д.
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 5.",
"
<br />
<font size='14' color='#4499CC'>
Запрещена реклама и плагиат сторонних игровых серверов или иных интернет-ресурсов.
</font>
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 4.",
"
<br />
<font size='14' color='#4499CC'>
Запрещено играть без заполненного никнейма.
</font>
<br /><br />
Содержание или намёк в никнейме любых нецензурных или оскорбительных фраз, на любой почве — межрасовой, межнациональной, религиозной или личной неприязни — строго запрещено. Использование глаголов, обращений и т.п. запрещено, дабы не вводить игроков в замешательство при радиообмене или общении через игровой чат. Ваш никнейм служит также в качестве позывного используемого при обращении к вам другими игроками, и таким образом должен быть легко-произносимым и читаемым словом, словосочетанием (например, прил.+сущ.) или слогом, а не труднопроизносимым набором символов или букв.
<br /><br />
В случае отказа изменить свой никнейм по просьбе администратора, игрок может быть удалён с сервера или — в случае с рецидивом — пресечён еще более строго, тем не менее в соответствии с положениями соответствующих правил.
<br /><br />
<font size='10' color='#BECEDA'>
Примечание: Никнейм содержащий прямые или косвенные оскорбления игроков или администрации может классифицироваться как нарушение 3-его пункта.
</font>
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 3.",
"
<br />
<font size='14' color='#4499CC'>
Запрещены оскорбления, любые провокации или угрозы в адрес администрации либо игроков.
</font>
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 2.",
"
<br />
<font size='14' color='#4499CC'>
Нецензурная лексика запрещена.
</font>
<br />
"
]];

player createDiaryRecord ["rules",
[
"Пункт 1.",
"
<br />
<font size='14' color='#4499CC'>
Запрещено наносить любой преднамеренный вред своей команде или процессу игры в целом:
</font>
<br /><br />
1.1. Убийство своих (Тимкил)
<br />
1.2. Саботаж или диверсии направленные против дружественных войск
<br />
1.3. Стрельба на базе без необходимости
<br />
1.4. Кража техники ранее занятой другим игроком
<br />
1.5. Использование транспортных вертолётов как личное такси
<br />
1.6. Флуд
<br />
1.7. Пилотам запрещено участвовать в боевых действиях кроме как на боевых вертолетах/самолетах.
<br />
"
]];

player createDiaryRecord ["rules",
[
"Условности",
"
<br />
Нижеуказанные десять пунктов характеризуют основные правила поведения, которые мы ожидаем и требуем от всех игроков, участвующих на нашей — а также смежной — линейке игровых серверов под зонтиком проекта.
<br /><br />
Соблюдая уже только эти основные правила Вы можете быть на 99 % уверены, что у Вас не будет неприятностей не на одном из наших серверов.
<br /><br />
<font size='14' color='#4499CC'>Приятной игры!</font>
<br /><br />
<br />
"
]];

//Тимспик
player createDiaryRecord ["teamspeak",
[
"Внутриигровая связь",
"
Адрес нашего ТС:<br />
<font size='18' color='#D63333'>TS.TEHGAM.COM</font>
<br />
Самую последнюю версию ТС можно найти на официальной странице:
<br />
<font size='18' color='#3E9D3F'>TEAMSPEAK.COM</font>
<br />
• В разделе Downloads/TeamSpeak 3.
<br />
"
]];

//Журнал изменений от ADR
player createDiaryRecord ["changelog",
[
"ADR:Spec Ops v0.0.3 (23.04.2016)",
"
<br /><font color='#3E9D3F'>Добавлено</font>
<br />- новые места (города) в дополнительных миссиях
<br />- M4 Scorcher, M5 Sandstorm MLRS добавлены в наградную технику
<br />- стоянка наградной техники теперь освещена
<br />- возможность включения ПВО у ангаров пилотов
<br />- настройки цветокоррекции в меню прорисовки
<br />- на основном задании с некоторой вероятностью появляется дартер с пулеметом управляемый игроком
<br />- в MH-9 Hummingbird добавлены ловушки
<br />- метки лазерных целеуказателей видимые для пилотов боевых вертолетов
<br />
<br /><font color='#FFEB3B'>Изменено</font>
<br />- закрыты места первого/второго пилота и карго мастера для не-пилотов
<br />- если игроков меньше 7 человек то MH-9 Hummingbird доступен для всех классов
<br />- переписана миссия Склад
<br />- страйдер с гранатаметом убран из наградной техники
<br />- пулеметы у WY-55 Hellcat заменены на пулеметы от PO-30 Orca
<br />- изменено количество и состав противников на дополнительных заданиях
<br />- противник может находится в зданиях в 1.5x радиусе зоны спецопераций
<br />- схожие по смыслу дополнительные миссии объединены в общие файлы со случайным вызовом самих миссий внутри объединенных вариантов: (Тайник, Лагерь, Пусковые установки, Шпионаж), (Прототип, Радар)
<br />- на приоритетной цели Узел связи и РЭБ у противников ПНВ заменены на фонари
<br />- стоянка БПЛА/БПА перенесена в ангар
<br />- дается 2 минуты на то чтобы вернутся в зону обороны после гибели всех игроков
<br />
<br /><font color='#D63333'>Исправлено</font> 
<br />- оборона завершалась в самом начале если в зоне мало противников
<br />- после смерти игрока оружие дублировалось
<br />- ошибки в появлении основного задания
<br />- оборона выпонялась сразу появления, мертвые игроки могли держать оборону
<br />- не пропадали боты на спецоперациях
<br />- на приоритетной цели Узел связи и РЭБ у вновь заходящих игроков не отключался ПНВ
"
]];

player createDiaryRecord ["changelog",
[
"ADR:Spec Ops v0.0.2 (08.04.2016)",
"
<br /><font color='#3E9D3F'>Добавлено</font>
<br />- приоритетные цели с небольшим шансом появляются вместе с основной задачей 
<br />- новая приоритетная цель Узел связи и РЭБ от Alex Rus
<br />- добавлены радиоканалы:
<br />  <font color='#ff0000'>Экстренный</font> доступен всем (только чат)
<br />  <font color='#0000ff'>Оперативный</font> доступен командирам отделений и пилотам
<br />  <font color='#660066'>Командный</font> доступен командирам отделений
<br />  <font color='#006600'>Групповой</font> доступен всем внутри группы
<br />  <font color='#ffcc00'>Транспортный</font> доступен всем кто находится в транспорте
<br />  <font color='#ffffff'>Прямой</font> доступен всем на небольшом расстоянии
<br />- передача голосовых сообщений с имитацией работы радиостанции (треск/шипение)
<br />
<br /><font color='#FFEB3B'>Изменено</font>
<br />- медикам и инженером доступны подствольники
<br />- командирам отделений доступны Alamut/PCML
<br />- изменено количество и расположение техники на базе
<br />- AH-9 Pawnee заменен на WY-55 Hellcat
<br />- дополнительные задания и приоритетные цели не повторяются
<br />- убрано управление группами. Текущую группу можно посмотреть на карте в разделе Звено
<br />
<br /><font color='#D63333'>Исправлено</font> 
<br />- в арсенале недоступно оружие: MXM Black, пистолетные магазины, AT/AP ракеты Titan
<br />- отсутствие проверки типа в функции удаления юнитов
<br />- боты проходят сквозь стены в бункере
<br />- БПЛА с ракетами не перезаряжается
<br />- инженер может использовать снаряжение на любом расстоянии используя подключенный БПЛА
<br />
<br /><font color='#0099CC'>Оптимизация</font>
<br />- функции удаления ботов/техники заменены на новый вариант
"
]];

player createDiaryRecord ["changelog",
[
"ADR:Spec Ops v0.0.1 (01.04.2016)",
"
<br /><font color='#3E9D3F'>Добавлено</font>
<br />- в сутках 2 ночи длиной в час, остальное время утро-день-вечер
<br />- цветокоррекция
<br />- вышку можно подрывать с помощью СВУ
<br />- уничтожение вышки приносит 10 очков
<br />- динамическая погода, меняющаяся каждые 3 часа по реальным погодным данным с метеостанции SIP за 2015г, ночью погода ясная
<br />- часть вражеской техники доступна для игроков
<br />- командный пункт противника как задание на основной миссии
<br />- новые географические позиции появления основного задания в крупных городах
<br />- если в зоне основного задания есть дома, часть пехоты появляется в зданиях
<br />- инженер может использовать дартеры и бпла
<br />- командир отделения может использовать оружие с подствольным гранатометом
<br />
<br /><font color='#FFEB3B'>Изменено</font>
<br />- вид от третьего лица только в технике
<br />- убрано перекрестие прицела
<br />- убрано полное отключение травы
<br />- убраны метки одногрупников (белые шестиугольники)
<br />- игроки поделены на 3 группы: 2 взвода по 13 чел и 4 пилота
<br />- основная и дополнительные миссии появляются по-очереди
<br />- бинокли с тепловизором доступны только командирам отделений
<br />- убрана форма пехоты противника, синхронизирован VAS и Арсенал
<br />- радиовышка охраняется и не обозначена на карте
<br />- убраны классы гренадер и оператор БПЛА
<br />- количество пехоты и техники на основном задании
<br />- силы противника не уничтоженные во время захвата остаются на время обороны
<br />- оборона не заканчивается по таймеру, необходимо уничтожить большинство противников
<br />- при проигрыше обороны наградная техника исчезает из зоны наградной техники
<br />
<br /><font color='#D63333'>Исправлено</font> 
<br />- ошибки при работе миссии на Linux Dedicated Server
<br />- убран эффект хедшот-с-разворота у ботов
<br />
<br /><font color='#0099CC'>Оптимизация</font>
<br />- используются неблокирующие вызовы скриптов/функций (где возможно)
<br />- миссия адаптирована под использование Headless Client
<br />- скрипт обороны переписан без использования EOS
<br />- удалены EOS_Spawn и EOS_Bastion
"
]];

//Авторы
player createDiaryRecord ["credits",
[
"ADR:Spec Ops",
"
<br />
<font size='18' color='#3E9D3F'>Автор</font>
<br />
<font size='14'>
    • ToxaBes
</font>
<br />
<font size='18' color='#3E9D3F'>Разработчики</font>
<br />
<font size='14'>
    • ToxaBes
<br />
    • evil_c0okie
</font>
<br />
<font size='14'>
Данная миссия основана на ADR:Blue Shark [www.tehgam.com].
</font>
"
]];

player createDiaryRecord ["credits",
[
"Annex Done Right (Blue Shark/Red Lynx)",
"
<br />
<font size='18' color='#3E9D3F'>Руководитель</font>
<br />
<font size='14'>
    • tym32167
</font>
<br /><br />
<font size='18' color='#3E9D3F'>Разработчики</font>
<br />
<font size='14'>
    • a11archer
<br />
    • Noart
<br />
    • PR9INICHEK
<br />
    • Stevenson
<br />
    • vosur
<br />
    • evil_c0okie
<br />
    • ToxaBes
<br /><br />
<font size='18' color='#3E9D3F'>Локализация</font>
<br />
<font size='14'>
    • KaMeG
<br />
    • Tourorist
</font>
<br /><br />
<font size='18' color='#3E9D3F'>Спасибки</font>
<br />
<font size='14'>Мы выражаем свою благодарность игрокам Второго.</font>
<br /><br />
<font size='10' color='#BECEDA'>
В частности, огромное спасибо всем кто уделяет своё время оставляя нам отзывы по текущим характеристикам миссии, делая заметки о её возможных проблемах и недоработках, и предлагая свои идеи по её улучшению. Ваше активное участие способствует и служит гарантом для дальнейшего развития проекта.
</font>
"
]];

player createDiaryRecord ["credits",
[
"Invade & Annex",
"
<font size='18' color='#3E9D3F'>Mission authors</font>
<br />
<font size='14'>
    • Quiksilver
</font>
<br />
<font size='14'>
    • Rarek – Ahoy World (ahoyworld.co.uk)
</font>
<br /><br />
<font size='18' color='#3E9D3F'>Contributors</font>
<br />
<font size='14'>
    • Jester – Ahoy World (ahoyworld.co.uk)
<br />
    • Razgriz33 – Ahoy World
<br />
    • Kamaradski – Ahoy World
<br />
    • chucky</font> – All FPS
</font>
<br /><br />
<font size='18' color='#3E9D3F'>Addons</font>
<br />
<font size='14'>
    • Giallustio – =BTC= Revive
<br />
    • BangaBob – EOS
<br />
    • aeroson – Squad Manager
<br />
    • Tonic – VAS, TAW View Distance
<br />
    • Alex Wise – aw_fnc
<br />
    • Tophe – Vehicle Respawn
<br />
    • Shuko – SHK Taskmaster
<br />
    • Zealot – Fast rope
<br />
    • aeroson – Map markers
<br />
    • ProGamer – Jump
<br />
    • wildw1ng – Gear restrictions
<br />
    • Bake – Safe Zone
<br />
    • longbow – Laser designation for vehicles
<br />
    • Magnet Ass – CSAT AAF Vehicles
<br />
    • NorX Aengell – XENO Taru Pod Mod
</font>
"
]];

player createDiaryRecord ["info", ["   Гроздья Гнева", "
Вводная: противник получил контроль над нашим ударным орбитальным комплексом ""Гроздья Гнева"". Комплекс состоит из трех спутников, каждый имеет на вооружении волоконный лазер мощностью до 500 кВт способный уничтожать ракеты, БПЛА и пехоту. Вернуть контроль над спутниками можно только взломав терминалы управления. Командование назначило поисковую спецоперацию.<br/><br/>
Цель: выдвинуться в указанный район, провести поисковую операцию и взломать три терминала управления спутниками.<br/><br/>
Примечание: техника запрещена. Экипируйтесь с расчетом на тяжелый городской бой. 
Для завершения этой миссии необходимо взломать три терминала управления спутниками. Для этого необходимо подойти к каждому терминалу и в меню действий выбрать 'Взломать терминал'.
Взлом длится 100 секунд. В это время вы должны быть на расстоянии не более 10м от терминала. В случае увеличения расстояния или смерти - взлом прекращается и терминал блокируется.<br/>
Каждый терминал имеет индикаторы состояния:<br/>
- голубой: терминал в режиме транспортировки (готов ко взлому)<br/>
- пурпурный: терминал в режиме развертывания (загрузка)<br/>
- оранжевый: терминал в процессе передачи данных (взлом)<br/>
- зеленый: терминал успешно взломан<br/>
- красный: взлом прерван, терминал заблокирован<br/>
"]];

player createDiaryRecord ["info", ["   Желтый туман", "
Вводная: нам поступила информация о странном складе ГСМ противника. Охрана склада часто ходит в противогазах и комплектах химзащиты. Есть подозрние что часть емкостей сожержит иприт. Командование назначило десантную спецоперацию.<br/><br/>
Цель: выдвинуться в указанный район, проникнуть на базу, уничтожить гарнизон и обезвредить бочки с химоружием.<br/><br/>
Примечание: техника запрещена. На склад можно попасть только с воздуха - десантируйтесь с парашютом. Будьте осторожны - попадание в бочки вызывает распространение отравляющего газа по территории склада.
Для завершения этой миссии необходимо обезвредить все бочки с химоружием. Для этого необходимо подойти к каждой бочке и в меню действий выбрать 'Нейтрализовать'.
"]];

player createDiaryRecord ["info", ["   Рыба-меч", "
Вводная: мы получили просьбу о помощи от наших коллег из флота: атомная подводная лодка класса Рыба-Меч терпит бедствие недалеко от нашей зоны ответственности. Есть информация что противник перехватил сигнал SOS и отправил группу захвата по полученным координатам. Командование назначило подводную спецоперацию.<br/><br/>
Цель: выдвинуться в указанный район, найти подводную лодку и оборонять ее до подхода спасателей.<br/><br/>
Примечание: техника запрещена. Экипируйтесь с расчетом на подводный бой (водолазный костюм, ребризер, очки для ныряния, SDAR с боеприпасами двойного назначения).
Для завершения этой миссии необходимо заблокировать две беголовки лежащие около подлодки (через меню действий - Заблокировать).
"]];

player createDiaryRecord ["info", ["   Угон", "
Вводная: неделю назад противник атаковал один из наших складов и захватил экспериментальный вертолет. Сегодня наша разведка обнаружила его на одной из замаскированных баз противника.<br/><br/>
Цель: выдвинуться в указанный район, захватить вертолет и вернуть его на базу.<br/><br/>
Примечание: техника запрещена. Для завершения миссии необходимо улететь на вертолете дальше 1 км от зоны спецоперации, т.е. завершить мисиию может только игрок со специализацией пилот. Будьте внимательны и проверяйте уровень топлива перед вылетом.<br/>
При успешном завершении миссии в качестве дополнительной награды достается уникальное вооружение - вертолет с улучшенным вооружением.
"]];

player createDiaryRecord ["info", ["   Конвой", "
Вводная: недалеко от города разведка обнаружила конвой противника перевозящий Тактический Ядерный Заряд. Цель перемещения неизвестна, но визуальный осмотр показал что Заряд поврежден - есть угроза возникновения неконтролируемой ядерной реакции.<br/><br/>
Цель: выдвинуться в указанный район, остановить конвой и обезвредить Заряд.<br/><br/>
Примечание: техника запрещена. Будьте осторожны - любое повреждение объекта может запустить цепную реакцию. Лучший способ остановить конвой - сделать засаду. Противник видит обычные противтанковые мины и объезжает их.
Используйте СВУ городского типа (есть в снаряжении). Чтобы завершить эту миссию необходимо подойти к машине с ядерным зарядом и в меню действий выбрать 'Обезвредить заряд'.
При успешном завершении миссии в качестве дополнительной награды достается уникальное вооружение - грузовик с тактическим ядерным зарядом. Его можно использовать для выполнения других миссий.<br/><br/>
Особенности:<br/>
- имеет таймер подрыва на 5 минут (в меню действий)<br/>
- гарантированно уничтожает все в радиусе 600 м, наносит повреждения в радиусе 900 м<br/>
- электромагнитный импульс выводит из строя всю технику в радиусе 1400 м<br/>
- заряд не взрывается ближе чем 2200 м от базы<br/>
- при уничтожении автомобиля заряд детонирует, т.е. вместо таймера можно использовать РПГ, Титан, Подрывные заряды и т.д.
"]];

player createDiaryRecord ["info", ["   Заложники", "
Вводная: отряд противника занял населенный пункт и превратил его в укрепрайон. По приказу командира отряда часть местного населения была взята в заложники. Мы также получили ультиматум - покинуть остров в следующие 24 часа, в противном случае заложники будут убиты.<br/><br/>
Цель: выдвинуться в указанный район, обезвредить противника и освободить заложников. Будьте осторожны - противник имеет приказ уничтожить заложников в случае ликвидации командира.<br/><br/>
Примечание: техника запрещена. Укрепрайон имеет два кольца защиты в виде колючей проволки, ПТ-мин, мин-растяжек и прыгающих мин.
Заложники (гражданские) находятся в одном из одноэтажных военных зданий. Командир (в красной кепке) находится в двухэтажном военном здании. Для выполнения этой миссии необходимо освободить большинство заложников через меню действий 'Освободить заложника' и уничтожить командира.
"]];

player createDiaryRecord ["info", ["   Прерванный полёт", "
Вводная: противник сбил наш вертолет разведки. Пилоты спрятали блок с разведанными недалеко от места падения, после чего выдвинулись на точку эвакуации.<br/><br/>
Цель: выдвинуться в указанный район, обезвредить противника, найти данные разведки и уничтожить вертолет.<br/><br/>
Примечание: техника запрещена. Разведданные (открытый ноутбук защищенного типа) обычно помечены на карте соответствующим маркером (если в зоне меньше 15 домов - маркера не будет - обыскивайте дома).
Вертолет приземлился где-то в зоне спецоперации и его предстоит найти. Разведданные и вертолет соответственно помечены голубым и красным химсветом что облегчает их поиск в темное время суток.
Для завершения миссии необходимо подойтик разведданым и в меню действий выбрать 'Скачать данные', а также подойти к вертолету и выбрать 'Заложить взрывчатку'. Порядок действий не важен.
"]];

player createDiaryRecord ["info", ["Спецоперации:", "
Успешно выполненная спецоперация дает возможность игрокам непосредственно выполнившим это задание получить наградную технику, а также в некоторых случаях - технику с уникальным вооружением.
На этих миссиях запрещена любая техника. Все спецоперации - пехотные!
"]];

player createDiaryRecord ["info", ["   Радар", "
Вводная: в целях поддержки своей авиации вражеские силы захватили небольшую радиостанцию.<br/><br/>
Цель: выдвинуться в указанный район, обезвредить противника, захватить радиолокационные данные, а затем уничтожить и сам радар.<br/><br/>
Примечание: разрешена любая техника. Для завершения этой миссии необходимо в военном здании (одноэтажное) найти стол с ноутбуком и в меню действий выбрать 'Взять ноутбук и заложить взрывчатку'.
"]];

player createDiaryRecord ["info", ["   Прототип", "
Вводная: вражеские силы взяли на испытание новый прототип боевого вертолёта, который они скрывают в одном из своих ангаров.<br/><br/>
Цель: выдвинуться в указанный район, захватить данные о вертолёте и уничтожить прототип.<br/><br/>
Примечание: разрешена любая техника. Для завершения этой миссии необходимо в военном здании (одноэтажное) найти стол с ноутбуком и в меню действий выбрать 'Взять ноутбук и заложить взрывчатку'.
"]];

player createDiaryRecord ["info", ["   Шпионаж", "
Вводная: силы противника проводят НИР с целью производства новых типов оружия.<br/><br/>
Цель: выдвинуться в указанный район, найти и захватить научные данные и затем уничтожить исследовательский центр.<br/><br/>
Примечание: разрешена любая техника. Для завершения этой миссии необходимо в исследовательском центре (красно-белое 2х-этажное здание) найти стол с ноутбуком и в меню действий выбрать 'Взять ноутбук и заложить взрывчатку'.
"]];

player createDiaryRecord ["info", ["   Пусковые установки", "
Вводная: предатель в рядах союзных войск передаёт вражеским силам новейшие вооружение и пусковые установки.<br/><br/>
Цель: выдвинуться в указанный район, найти и захватить пусковые установки, ликвидируя группировки врага по ходу операции.<br/><br/>
Примечание: разрешена любая техника. Для завершения миссии необходимо найти ящики с беприпасами внутри одноэтажного военного здания и в меню действий выбрать 'Заложить взрывчатку'.
"]];

player createDiaryRecord ["info", ["   Лагерь", "
Вводная: противник проводит подготовку боевиков на территории острова.<br/><br/>
Цель: выдвинуться в указанный район, найти и уничтожить врага и захватить их боезапас.<br/><br/>
Примечание: разрешена любая техника. Для завершения миссии необходимо подойти к металлическому ящику и в меню действий выбрать 'Заложить взрывчатку'.
"]];

player createDiaryRecord ["info", ["   Тайник", "
Вводная: противник тайно переправляет и складирует значительное количество взрывчатых веществ близи своего прибрежного лагеря.<br/><br/>
Цель: выдвинуться в указанный район, найти и обезвредить текущую партию взрывчатки.<br/><br/>
Примечание: разрешена любая техника. Для завершения миссии необходимо подойти к металлическому ящику и в меню действий выбрать 'Заложить взрывчатку'.
Ящик обычно находится на втором (открытом) этаже двухэтажного военного здания.
"]];

player createDiaryRecord ["info", ["   Склад", "
Вводная: враг поставляет боевикам современное оружие и взрывчатые вещества.<br/><br/>
Цель: выдвинуться в указанный район и уничтожить складируемый боезапас противника.<br/><br/>
Примечание: разрешена любая техника. Экипируйтесь с расчётом на ближний бой. Для завершения миссии необходимо подойти к большой коробке и в меню действий выбрать 'Заложить взрывчатку'.
"]];

player createDiaryRecord ["info", ["Допзадания:", "
Успешно выполненное дополнительное задание дает возможность игрокам, непосредственно выполнившим это задание, получить наградную технику.
На этих миссиях разрешена любая техника.
"]];

player createDiaryRecord ["info", ["   Артиллерия", "
Вводная: обнаружена точка укрепления артиллерийских орудий противника. Её близлежащее расположение от района дислокации грозит всей нашей наземной группировке. Первый залп ожидается уже через 5 минут. <br/><br/>
Цель: Уничтожить артиллерию противника<br/><br/>
Примечание: разрешена любая техника. Для завершения миссии необходимо уничтожить орудия противника огороженные мешками с песком.
"]];

player createDiaryRecord ["info", ["   Зенитная батарея", "
Вводная: обнаружена точка укрепления зенитных орудий противника. Её близлежащее расположение грозит как группам десантирования, так и всей нашей авиации в целом.<br/><br/>
Цель: Уничтожить зенитную батарею противника.<br/><br/>
Примечание: разрешена любая техника. Для завершения миссии необходимо уничтожить орудия противника огороженные мешками с песком.
"]];

player createDiaryRecord ["info", ["Приоритетные цели:", "
Приоритетные цели возникают недалеко от основной миссии существенно затрудняя снабжение войск и передвижение личного состава к месту боевых действий. На этих миссиях разрешена любая техника.
"]];

player createDiaryRecord ["info", ["Зевс-миссии", "
Вводная: миссия созданная админами сервера для разнообразия игрового процесса.<br/><br/>
Цель: в большинстве случаев это захват сектора.<br/><br/>
Примечание: по-умолчанию все Зевс-миссии - ПЕХОТНЫЕ. Это значит что нельзя заезжать/заплывать/залетать на какой-либо технике в зону проведения миссии; даже на безоружной технике или для того чтобы поднять раненых.
Используйте технику чтобы добраться до места проведения миссии и оставляйте ее на въезде. Нарушители получат кик/бан/молнию в темечко. <br/>
Если какая-либо техника на миссии разрешена - админы укажут это в виде специального маркера на карте, например 'Разрешена легкая техника' или 'Разрешена техника без вооружения' и т.д.
"]];

player createDiaryRecord ["info", ["Основная миссия", "
Вводная: захват города.<br/><br/>
Цель: начинайте наступление для захвата города. В первую очередь захватите командный пункт чтобы дезорганизовать противника и уничтожьте радиовышку чтобы лишить противника возможности вызывать авиаподдержку.<br/><br/>
Примечание: уничтожить вышку можно подрывным пакетом, подрывным зарядом или СВУ. Вокруг вышки может быть минное поле. Во время обороны необходимо отстоять позиции и уничтожить большинство противников в зоне обороны. На миссии разрешена любая техника.
"]];
