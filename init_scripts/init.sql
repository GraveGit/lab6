-- Создаем таблицу, если она еще не существует
CREATE TABLE IF NOT EXISTS public.index_mass (
    user_id BIGINT,   -- Уникальный идентификатор пользователя
    weight BIGINT,    -- Вес пользователя
    height BIGINT     -- Рост пользователя
);

-- Вставляем тестовые данные в таблицу
INSERT INTO public.index_mass (user_id, weight, height) VALUES
    (1, 75, 175),
    (2, 60, 182),
    (3, 93, 181);
