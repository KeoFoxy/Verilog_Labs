//Создаем оболочку для программы
//init_1 - первая инициализация
//В данном коде мы добавляем 0-9 в праом крайнем дисплее
//Далее будет уже добалять больше

module wrap_1 (
    input    [3:0]  SW,
    output   [6:0]  HEX0,
    output   [6:0]  HEX1,
    output   [6:0]  HEX2,
    output   [6:0]  HEX3
);
//аналог хеддер файла
Lab_3_1 init_1 (SW [3:0], HEX0 [6:0], HEX1 [6:0], HEX2 [6:0], HEX3 [6:0]);

endmodule
