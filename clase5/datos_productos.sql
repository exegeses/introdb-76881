
INSERT INTO productos (producto, precio, idMarca, idCategoria, descripcion, imagen, activo) VALUES
-- Accesorios
('Mouse inalámbrico Logitech M185', 19.99, 1, 1, 'Mouse óptico inalámbrico con receptor USB', 'mouse_m185.jpg', true),
('Funda para laptop 15" AmazonBasics', 15.50, 16, 1, 'Funda acolchada para laptops de hasta 15.6 pulgadas', 'funda_laptop.jpg', true),
('Soporte ajustable para celular Xiaomi', 9.99, 20, 1, 'Soporte de escritorio para móviles', 'soporte_cel.jpg', true),

-- Periféricos
('Teclado mecánico Razer BlackWidow', 89.00, 19, 2, 'Teclado gamer retroiluminado', 'teclado_razer.jpg', true),
('Monitor LED Samsung 24"', 149.99, 7, 2, 'Monitor Full HD con tecnología Eye Saver', 'monitor_samsung.jpg', true),
('Combo teclado y mouse Logitech MK270', 34.90, 1, 2, 'Combo inalámbrico ideal para oficina', 'combo_mk270.jpg', true),

-- Gaming
('Auriculares Razer Kraken', 59.99, 19, 3, 'Auriculares para gamers con sonido envolvente', 'kraken.jpg', true),
('Control inalámbrico Xbox', 49.99, 7, 3, 'Control Bluetooth compatible con PC y consola', 'xbox_control.jpg', true),
('Silla gamer Xiaomi', 120.00, 20, 3, 'Silla ergonómica para sesiones largas', 'silla_gamer.jpg', true),

-- Hogar Inteligente
('Smart speaker Amazon Echo Dot', 39.99, 16, 4, 'Altavoz inteligente con Alexa', 'echo_dot.jpg', true),
('Google Nest Mini', 44.99, 15, 4, 'Control por voz y automatización del hogar', 'nest_mini.jpg', true),
('Interruptor inteligente TP-Link', 24.99, 2, 4, 'Controla luces desde tu móvil', 'tplink_switch.jpg', true),

-- Cámaras
('Cámara Canon EOS Rebel T7', 499.99, 9, 5, 'Cámara réflex digital de 24.1 MP', 'eos_t7.jpg', true),
('Sony Alpha a6000', 649.99, 8, 5, 'Cámara mirrorless compacta', 'alpha_a6000.jpg', true),
('Cámara de seguridad TP-Link Tapo', 29.99, 2, 5, 'Cámara IP con visión nocturna', 'tapo_camara.jpg', true),

-- Audio
('Auriculares Bluetooth JBL Tune 500BT', 39.99, 13, 6, 'Auriculares inalámbricos con graves potentes', 'tune500bt.jpg', true),
('Barra de sonido Bose Solo 5', 199.00, 14, 6, 'Barra de sonido compacta con Bluetooth', 'bose_solo.jpg', true),
('Altavoz portátil Sony XB13', 59.00, 8, 6, 'Resistente al agua y con sonido potente', 'xb13.jpg', true),

-- Video
('Proyector portátil Xiaomi Mi Smart', 399.00, 20, 7, 'Proyector inteligente con Android TV', 'mi_smart_projector.jpg', true),
('Webcam Logitech C920', 79.00, 1, 7, 'Webcam Full HD con micrófono integrado', 'c920.jpg', true),
('Capturadora de video Elgato HD60 S', 159.00, 7, 7, 'Streaming y grabación en 1080p60', 'elgato.jpg', true),

-- Almacenamiento
('SSD Kingston 480GB A400', 39.99, 6, 8, 'Disco sólido SATA para laptops y PCs', 'a400_480.jpg', true),
('Disco duro externo Seagate 2TB', 59.99, 7, 8, 'USB 3.0 portátil', 'seagate2tb.jpg', true),
('Tarjeta microSD Samsung 128GB', 19.99, 7, 8, 'Clase 10 UHS-I', 'micro_sd.jpg', true),

-- Redes
('Router WiFi TP-Link Archer C6', 49.99, 2, 9, 'Router de doble banda con 4 antenas', 'archer_c6.jpg', true),
('Extensor de red TP-Link RE305', 34.99, 2, 9, 'Amplificador de señal WiFi', 're305.jpg', true),
('Adaptador USB WiFi Asus AC1300', 29.99, 3, 9, 'Doble banda con antena externa', 'asus_ac1300.jpg', true),

-- Computadoras
('PC de escritorio HP Pavilion', 499.00, 10, 10, 'Procesador Intel Core i5, 8GB RAM', 'hp_pavilion.jpg', true),
('Mini PC Lenovo ThinkCentre', 399.00, 18, 10, 'Compacto y potente', 'thinkcentre.jpg', true),
('PC gamer armado Intel i7 + RTX3060', 1099.00, 4, 10, 'Equipo para juegos de alto rendimiento', 'pc_gamer.jpg', true),

-- Laptops
('Laptop Dell Inspiron 15', 699.00, 11, 11, 'Intel Core i5, 16GB RAM', 'inspiron15.jpg', true),
('Acer Aspire 5', 629.00, 12, 11, 'Pantalla Full HD, SSD 512GB', 'aspire5.jpg', true),
('Laptop Huawei MateBook D14', 749.00, 17, 11, 'Diseño elegante y ligero', 'matebook_d14.jpg', true),

-- Tablets
('Tablet Samsung Galaxy Tab A8', 199.00, 7, 12, 'Pantalla de 10.5", octa-core', 'tab_a8.jpg', true),
('Tablet Lenovo Tab M10', 169.00, 18, 12, 'Ideal para entretenimiento', 'tab_m10.jpg', true),
('iPad 9ª Gen 10.2"', 329.00, 15, 12, '64GB, WiFi', 'ipad9.jpg', true),

-- Celulares
('Xiaomi Redmi Note 12', 229.00, 20, 13, '6.67", cámara 50MP', 'redmi_note12.jpg', true),
('Samsung Galaxy A34', 299.00, 7, 13, 'Pantalla AMOLED y 5G', 'galaxy_a34.jpg', true),
('Huawei P30 Lite', 249.00, 17, 13, 'Triple cámara y 128GB', 'p30_lite.jpg', true),

-- Impresoras
('Impresora HP DeskJet 2720e', 79.00, 10, 14, 'Multifunción con WiFi', 'deskjet_2720e.jpg', true),
('Impresora Canon PIXMA G3110', 139.00, 9, 14, 'Sistema continuo de tinta', 'pixma_g3110.jpg', true),
('Brother HL-L2370DW', 169.00, 7, 14, 'Impresora láser monocromo', 'hl_l2370dw.jpg', true),

-- Software
('Windows 11 Pro', 139.00, 3, 15, 'Licencia original para 1 PC', 'win11.jpg', true),
('Office 365 Personal 1 año', 69.00, 3, 15, 'Incluye Word, Excel, PowerPoint', 'office365.jpg', true),
('Antivirus McAfee Total Protection', 29.99, 7, 15, '1 año para 3 dispositivos', 'mcafee.jpg', true),

-- Monitores
('Monitor Acer Nitro 27" FHD', 199.00, 12, 16, '144Hz para gaming', 'acer_nitro.jpg', true),
('Monitor HP 24mh 23.8"', 149.00, 10, 16, 'Full HD IPS', 'hp_24mh.jpg', true),
('Monitor LG UltraGear 24"', 189.00, 7, 16, 'Frecuencia 165Hz', 'lg_ultragear.jpg', true),

-- Componentes
('Procesador Intel Core i5 12400F', 179.00, 4, 17, '6 núcleos, LGA1700', 'i5_12400f.jpg', true),
('Memoria RAM Kingston Fury 16GB', 59.99, 6, 17, 'DDR4 3200MHz', 'kingston_fury.jpg', true),
('Placa madre Asus TUF B660M', 139.00, 3, 17, 'MicroATX compatible con Intel 12th Gen', 'asus_b660m.jpg', true),

-- Energía
('UPS APC 650VA', 89.00, 7, 18, 'Protección contra cortes de energía', 'apc_650va.jpg', true),
('Regleta inteligente TP-Link', 39.00, 2, 18, 'Control remoto desde el móvil', 'tplink_regleta.jpg', true),
('Cargador portátil Xiaomi 20000mAh', 29.00, 20, 18, 'Carga rápida USB-C', 'powerbank_xiaomi.jpg', true),

-- Conectividad
('Cable HDMI 2.1 de 2m', 12.00, 1, 19, 'Compatible con 4K/8K', 'hdmi_2_1.jpg', true),
('Adaptador USB-C a HDMI Lenovo', 24.00, 18, 19, 'Para laptops y tablets', 'usbchdmi.jpg', true),
('Hub USB 4 puertos AmazonBasics', 19.00, 16, 19, 'Con alimentación externa', 'hub_usb.jpg', true),

-- Wearables
('Smartwatch Xiaomi Mi Band 7', 59.99, 20, 20, 'Pantalla AMOLED y seguimiento de actividad', 'mi_band7.jpg', true),
('Huawei Watch Fit', 89.00, 17, 20, 'Seguimiento deportivo y salud', 'watch_fit.jpg', true),
('Samsung Galaxy Watch 5', 229.00, 7, 20, 'WearOS, sensor de bioimpedancia', 'galaxy_watch5.jpg', true);
