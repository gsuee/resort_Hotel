-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2022 a las 20:11:01
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `resort`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_list`
--

CREATE TABLE `activity_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `activity_list`
--

INSERT INTO `activity_list` (`id`, `name`, `description`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Motociclismo Acuático', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 14px;&quot;=&quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Las motos de agua, motos acu&aacute;ticas o motos n&aacute;uticas (personal watercraft o PWC en ingl&eacute;s) son un tipo de embarcaci&oacute;n ligera con un sistema de conducci&oacute;n similar al de una motocicleta convencional. La principal diferencia de las motos de agua con otros tipos de embarcaci&oacute;n es que no usan h&eacute;lice externa, sino interna, ya que son propulsadas por turbina.&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 1, 'uploads/activitys/1.png?v=1641618733', 0, '2022-01-08 13:12:13', '2022-02-15 12:02:35'),
(2, 'Snorkeling', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Si hablamos de actividades divertidas que despiertan el esp&iacute;ritu aventurero en las vacaciones sin necesidad de ser deportistas experimentados, debemos hablar del snorkeling. Este es uno de los deportes acu&aacute;ticos de Cartagena que se mantiene entre los m&aacute;s populares, y hay muchas razones que lo mantienen entre los favoritos de los turistas.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Esta actividad se caracteriza por el uso de una m&aacute;scara de buceo y un tubo de respiraci&oacute;n llamado snorkel. Tambi&eacute;n es necesario usar aletas de buceo en los pies para propulsar el cuerpo mientras la persona est&aacute; sumergida en el mar. En algunos casos se utiliza traje neopreno, especialmente si se trata de la pr&aacute;ctica en aguas fr&iacute;as.&lt;/p&gt;', 1, 'uploads/activitys/2.png?v=1641618857', 0, '2022-01-08 13:14:17', '2022-02-15 12:04:06'),
(3, 'Buceo', '&lt;p style=&quot;text-align: left; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 14px;&quot;=&quot;&quot;&gt;&lt;font color=&quot;#4d5156&quot; face=&quot;arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;El buceo es una actividad subacu&aacute;tica que puede realizarse con fines recreativos, investigativos o deportivos. Consiste en ingresar al agua y sumergir la totalidad del cuerpo, por lo que, en general, se desarrolla con la ayuda de alg&uacute;n tipo de equipamiento que permite al buzo no tener que salir a la superficie a respirar.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;', 1, 'uploads/activitys/3.png?v=1641618898', 0, '2022-01-08 13:14:58', '2022-02-15 12:01:56'),
(4, 'Visita a la Isla Moncada', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;En el lugar el gu&iacute;a que nos ense&ntilde;&oacute; el museo nos dio una explicaci&oacute;n muy detallada y las im&aacute;genes que hay all&iacute; son impresionantes. Muy bonito&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Es un lugar espectacular muy bonito nos gusto bastante solo que nada mas pudimos visitarlo por fuera&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Estoy seguro que resultar&iacute;a imposible visitar #Santiago y no mezclarse bastante con la #HistoriaDeCuba. Pareciera que cada calle te susurrara una historia diferente, unas conocidas, otras no tanto. Es incre&iacute;ble la espiritualidad que se siente en esa ciudad de nuestro oriente.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Tambi&eacute;n impresionante fue visitar la #Plaza de la #Revoluci&oacute;n Antonio Maceo y contemplar esa enorme #estatua, la m&aacute;s alta en nuestro pa&iacute;s, que se ajusta al #sobrenombre del #h&eacute;roe que representa: #TIT&Aacute;N_DE_BRONCE. Con 16 metros de altura, impresiona al caminante. Cabalgando en ese enorme caballo parece que sigue exhortando a todo el #pueblo de Santiago de Cuba a la #lucha, a no descansar ni un instante.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;A su lado, los #machetes en posici&oacute;n de batalla, inclinados hacia delante y que desde cierto punto dejan un t&uacute;nel que nos permite visualizar a lo lejos las #monta&ntilde;as, las altas monta&ntilde;as donde se gestaron las #batallas que llevar&iacute;a a Cuba al #triunfo definitivo. Haciendo valer las palabras que en #bronce, creo yo, est&aacute;n reflejadas en esa maravillosa plaza: &ldquo;QUIEN INTENTE APODERARSE A CUBA RECOGER&Aacute; EL POLVO DE SU SUELO ANEGADO EN SANGRE SINO PERECE EN LA LUCHA&rdquo;.&lt;/p&gt;', 1, 'uploads/activitys/4.png?v=1641618928', 0, '2022-01-08 13:15:27', '2022-02-15 12:06:08'),
(5, 'test', '&lt;p&gt;test&lt;/p&gt;', 0, 'uploads/activitys/5.png?v=1641618949', 1, '2022-01-08 13:15:49', '2022-01-08 13:16:19'),
(6, 'Recorrido Ciudad Amurallada', '&lt;p&gt;Las cosas interesantes a descubrir son el museo con obras de arte fabuloso y el claustro que esta repleto de &aacute;rboles enormes. San Pedro Claver es el nombre de un gran partidario para el derecho de los esclavos, su estatua fue tallada por el artista Enrique Grau en su honor.&lt;br&gt;&lt;/p&gt;', 1, 'uploads/activitys/6.png?v=1644423567', 0, '2022-02-09 11:19:27', '2022-02-09 11:19:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_list`
--

CREATE TABLE `message_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `message_list`
--

INSERT INTO `message_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `date_created`) VALUES
(4, 'Juan Consulta', '3255821472', 'jconsulta@cweb.com', 'Consulta enviada usuario juan consulta', 1, '2022-02-09 11:13:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation_list`
--

CREATE TABLE `reservation_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1 = Confirmed, 2=Cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservation_list`
--

INSERT INTO `reservation_list` (`id`, `code`, `room_id`, `check_in`, `check_out`, `fullname`, `contact`, `email`, `address`, `status`, `date_created`, `date_updated`) VALUES
(1, '202201-0001', 2, '2022-01-10', '2022-01-11', 'Francisco Pereira', '09123456789', 'jsmith@sample.com', 'Sample Address only.', 1, '2022-01-08 11:43:17', '2022-02-15 12:07:15'),
(2, '202201-0002', 2, '2022-01-12', '2022-01-14', 'Eduardo Montes', '09123654789', 'mcooper@gmail.com', 'Sample Address only', 1, '2022-01-08 11:44:17', '2022-02-15 12:07:26'),
(4, '202202-0001', 1, '2022-02-10', '2022-02-17', 'Juan Reserva', '3125648197', 'jreserva@cweb.com', 'Calle 89 N 32 11', 1, '2022-02-09 11:09:09', '2022-02-09 11:10:16'),
(5, '202202-0002', 1, '2022-02-18', '2022-02-18', 'Pedro Reserva', '3058524637', 'preserva@cweb.com', 'Calle 45 N 32 09', 0, '2022-02-10 10:18:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room_list`
--

CREATE TABLE `room_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `image_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `room_list`
--

INSERT INTO `room_list` (`id`, `name`, `type`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Cuarto 101', 'Doble', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit est elit, vitae sagittis lorem lobortis in. Donec vulputate, metus vel hendrerit pulvinar, lectus arcu cursus ipsum, vitae tincidunt erat velit sit amet tortor. Integer sit amet ex pellentesque purus hendrerit rhoncus. Aliquam aliquet hendrerit turpis, ut imperdiet lacus condimentum at. Etiam aliquet non nunc a vehicula. Cras lobortis, velit sed sollicitudin bibendum, tellus arcu lobortis dolor, rutrum ullamcorper est ante vitae ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas non pretium sapien. Etiam a fermentum risus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut tempus urna non consequat tincidunt. Vestibulum imperdiet ultrices malesuada. In consequat luctus nisl imperdiet convallis. Donec auctor tortor id nisl varius suscipit. Aliquam posuere ex risus, a laoreet risus vulputate nec. Ut fringilla nibh lacus, quis sagittis odio bibendum quis. Phasellus odio ipsum, accumsan vehicula diam ac, condimentum aliquam tellus.&lt;/p&gt;', 1200, 'uploads/rooms/1.png?v=1641606821', 1, 0, '2022-01-08 09:53:41', '2022-02-15 11:32:48'),
(2, 'Cuarto 102', 'Doble', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut tempus urna non consequat tincidunt. Vestibulum imperdiet ultrices malesuada. In consequat luctus nisl imperdiet convallis. Donec auctor tortor id nisl varius suscipit. Aliquam posuere ex risus, a laoreet risus vulputate nec. Ut fringilla nibh lacus, quis sagittis odio bibendum quis. Phasellus odio ipsum, accumsan vehicula diam ac, condimentum aliquam tellus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Etiam et massa ligula. Donec lacinia purus ut ex malesuada, at aliquam dolor laoreet. Proin hendrerit vestibulum quam. Praesent metus diam, volutpat sit amet leo nec, placerat facilisis quam. Pellentesque quis mauris ut erat tristique bibendum. Aliquam molestie massa quis libero vestibulum ultrices. Aliquam odio tellus, tincidunt ut arcu eu, efficitur fringilla leo.&lt;/p&gt;', 2500, 'uploads/rooms/2.png?v=1641608206', 1, 0, '2022-01-08 10:16:45', '2022-02-15 11:33:02'),
(3, 'Cuarto 103', 'Familiar', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut sed dui sed sapien tincidunt aliquet. Aenean sodales sollicitudin nibh a porta. Nullam ac commodo lorem. Duis tempus elit in turpis efficitur feugiat. Pellentesque semper auctor lacus, et ullamcorper magna pulvinar eget. Fusce molestie vitae elit ac ornare. Mauris rutrum a felis eget lacinia.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;In a orci laoreet, convallis nibh sed, pellentesque elit. Mauris in ipsum justo. Aliquam maximus dapibus auctor. Nulla sodales varius dui, quis ultrices nulla vulputate et. Suspendisse id ligula justo. Etiam quis ligula sit amet purus hendrerit blandit. Mauris ut egestas magna. In tincidunt euismod tincidunt.&lt;/p&gt;', 3500, 'uploads/rooms/3.png?v=1641608243', 1, 0, '2022-01-08 10:17:23', '2022-02-15 11:33:13'),
(4, 'Cuarto 103', 'Doble', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Etiam et massa ligula. Donec lacinia purus ut ex malesuada, at aliquam dolor laoreet. Proin hendrerit vestibulum quam. Praesent metus diam, volutpat sit amet leo nec, placerat facilisis quam. Pellentesque quis mauris ut erat tristique bibendum. Aliquam molestie massa quis libero vestibulum ultrices. Aliquam odio tellus, tincidunt ut arcu eu, efficitur fringilla leo.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut sed dui sed sapien tincidunt aliquet. Aenean sodales sollicitudin nibh a porta. Nullam ac commodo lorem. Duis tempus elit in turpis efficitur feugiat. Pellentesque semper auctor lacus, et ullamcorper magna pulvinar eget. Fusce molestie vitae elit ac ornare. Mauris rutrum a felis eget lacinia.&lt;/p&gt;', 1300, 'uploads/rooms/4.png?v=1641608280', 1, 0, '2022-01-08 10:17:59', '2022-02-15 11:33:24'),
(5, 'Cuarto 105', 'Doble', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit est elit, vitae sagittis lorem lobortis in. Donec vulputate, metus vel hendrerit pulvinar, lectus arcu cursus ipsum, vitae tincidunt erat velit sit amet tortor. Integer sit amet ex pellentesque purus hendrerit rhoncus. Aliquam aliquet hendrerit turpis, ut imperdiet lacus condimentum at. Etiam aliquet non nunc a vehicula. Cras lobortis, velit sed sollicitudin bibendum, tellus arcu lobortis dolor, rutrum ullamcorper est ante vitae ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas non pretium sapien. Etiam a fermentum risus.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;In a orci laoreet, convallis nibh sed, pellentesque elit. Mauris in ipsum justo. Aliquam maximus dapibus auctor. Nulla sodales varius dui, quis ultrices nulla vulputate et. Suspendisse id ligula justo. Etiam quis ligula sit amet purus hendrerit blandit. Mauris ut egestas magna. In tincidunt euismod tincidunt.&lt;/span&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1600, 'uploads/rooms/5.png?v=1641608319', 1, 0, '2022-01-08 10:18:39', '2022-02-15 11:33:35'),
(6, 'Cuarto 201', 'Doble', '&lt;p&gt;Habitaci&oacute;n b&aacute;sica con vista al mar,&nbsp; contempla la belleza natural de Cartagena en su m&aacute;ximo esplendor. Ponemos a tu disposici&oacute;n este sencillo cuarto, con todo lo que necesitas para que tu estad&iacute;a con nosotros sea inolvidable.&lt;/p&gt;', 1200, 'uploads/rooms/6.png?v=1644424073', 1, 0, '2022-02-09 11:27:52', '2022-02-15 11:32:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Hotel la Concordia'),
(6, 'short_name', 'SGH'),
(11, 'logo', 'uploads/logo-1644941243.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1644446369.png'),
(15, 'content', 'Array'),
(16, 'email', 'lorem@gmail.com'),
(17, 'contact', '584140000999'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Calle 900 N 87 56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Marcos', NULL, 'Torres', 'ProCode', '4b67deeb9aba04a5b54632ad19934f26', 'uploads/avatar-1.png?v=1644422578', NULL, 1, 1, '2021-01-20 14:02:37', '2022-02-09 11:02:58'),
(5, 'Juan', NULL, 'Usuario', 'jusuario', '4b67deeb9aba04a5b54632ad19934f26', 'uploads/avatar-5.png?v=1644424264', NULL, 2, 1, '2022-01-08 14:21:46', '2022-02-09 11:31:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity_list`
--
ALTER TABLE `activity_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indices de la tabla `room_list`
--
ALTER TABLE `room_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activity_list`
--
ALTER TABLE `activity_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reservation_list`
--
ALTER TABLE `reservation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `room_list`
--
ALTER TABLE `room_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD CONSTRAINT `reservation_list_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
