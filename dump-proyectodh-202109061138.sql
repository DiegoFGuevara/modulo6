-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: proyectodh
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Política'),(2,'Deporte'),(3,'Espectáculo'),(4,'Tecnólogía'),(5,'Economia'),(6,'Educación'),(7,'Salud'),(8,'Sociedad'),(9,'Tendencias'),(10,'Mundo');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `descripcion` text NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `canDelete` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b71d6702-d17c-4adb-be3b-cd401ba6d96b` (`usuario_id`),
  KEY `FK_fbeddc12-5ebe-423a-a077-9eee38369162` (`categoria_id`),
  CONSTRAINT `FK_b71d6702-d17c-4adb-be3b-cd401ba6d96b` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FK_fbeddc12-5ebe-423a-a077-9eee38369162` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Funcionarios judiciales bonaerenses serán autoridades de mesa en las próximas elecciones','2021-09-02 17:53:54',NULL,'Unos tres mil funcionarios y empleados judiciales bonaerenses serán convocados para trabajar como autoridades de mesa en las próximas elecciones. Así lo dispuso la Suprema Corte de Justicia provincial, al hacer lugar a un planteo que había hecho llegar el juez federal bonaerense Alejo Ramos Padilla, siguiendo los mismos criterios que se habían llevado adelante en distintos comicios desde 2009.\r\n\r\nDe acuerdo a la resolución que firmó la Corte provincial, la secretaría de Personal de la Justicia de la provincia confeccionará una nómina de funcionarios letrados “del Grupo 11, hasta 50 años de edad inclusive, que revistan entre los niveles 18,75; 19 y 19,25 de la Jurisdicción Administración de Justicia y que hayan recibido la primera dosis de cualquiera de las vacunas destinadas a generar inmunidad contra el virus COVID-19, para que puedan ser designados autoridad de mesa en los venideros comicios que se llevarán a cabo en la Provincia”.\r\n\r\n\r\nLa decisión fue firmada hoy por los jueces de la Corte Suprema bonaerense Luis Genoud, Hilda Kogan, Daniel Soria y Sergio Torres. Ayer se formalizó la renuncia del juez Eduardo Pettigiani, que había sido presentada días atrás ante el gobernador de la Provincia de Buenos Aires, Axel Kicillof, para jubilarse.\r\n\r\nLa medida ya se había puesto en práctica en elecciones anteriores pero en esta oportunidad serán más necesarios que antes. Es que según aseguran fuentes vinculadas al operativo electoral hay preocupación por la gran cantidad de telegramas enviados a ciudadanos para que sean autoridades de mesa que están llegando rechazados.',1,1,0),(2,'Robaron un auto, le dispararon a policías y chocaron: uno de los detenidos tiene 16 años','2021-09-06 13:34:36',NULL,'Dos jóvenes delincuentes fueron detenidos tras una intensa persecución en el Acceso Oeste por parte de dos tenientes de la Policía Bonaerense, que incluyó además un tiroteo a toda velocidad y un violento choque contra otro auto al final de toda la secuencia. Según confirmaron fuentes policiales a Infobae, uno de los ladrones capturados tiene apenas 16 años.\r\n\r\nLa persecución comenzó después de que los efectivos, que hacían una recorrida de rutina por la zona, observaron a la altura de la intersección de la calle Dolores Prats y la colectora de la Autopista del Oeste, en Morón, un Peugeot 206 de color gris que había sido reportado como robado. De acuerdo con los datos aportados por las fuentes a este medio, se trataba de un vehículo que le habían sustraído a un joven momentos antes en la esquina de Pampa y Murillo, en la localidad de El Palomar.\r\n\r\n\r\nAl darles la voz de alto y de identificarse como integrantes de la fuerza, los delincuentes decidieron escapar a toda velocidad.',1,8,1),(3,'La enorme rebaja salarial de Griezmann: cuánto dinero resignó para volver al Atlético Madrid tras su paso por Barcelona','2021-09-02 17:53:54',NULL,'Uno de los fichajes más trascendentales del mercado europeo fue el regreso de Antoine Griezmann al Atlético Madrid. Claro que estuvo un escalón por debajo del de Lionel Messi al París Saint Germain y el de Cristian Ronaldo al Manchester United, pero la vuelta del francés al lugar en el que exhibió su más alto nivel generó mucha expectativa en la capital española.\r\n\r\nLo concreto es que el delantero de 30 años tuvo que resignar un dineral para retornar al conjunto colchonero, según informaron medios europeos. El Aleti desembolsó 10 millones de euros por el préstamo de una temporada con una opción de compra que será ejecutable a cambio de 40 millones extras en junio de 2022.',2,2,0),(4,'Inundaciones en EEUU: Joe Biden prometió dar todo el apoyo posible a los estados afectados por la tormenta Ida','2021-09-06 13:34:36',NULL,'El presidente estadounidense, Joe Biden, prometió “toda la ayuda que sea necesaria” a los estados afectados por la tormenta Ida, que ha dejado más de 20 muertos en el noreste del país.\r\n\r\n“Han caído lluvias récord en estos estados. Nueva York registró ayer, el primer día de septiembre, más lluvia de la que suele ver en todo el mes”, destacó el mandatario. “Estamos viendo la misma historia de devastación y heroísmo a través de Nueva Jersey y Pensilvania, también”, añadió.\r\n\r\n\r\nEl líder demócrata dijo que conversó con las autoridades de las zonas afectadas. “Hay muchos daños. Se lo he dejado claro a los gobernadores: Mi equipo de la Agencia Federal de Gestión de Emergencias, FEMA, está sobre el terreno preparado para proporcionar toda la ayuda que sea necesaria”, dijo.',3,10,1),(5,'Test para sacarle músculos al cerebro y lograr una mayor flexibilidad mental','2021-09-02 17:53:54',NULL,'La atención es una función compleja que participa en la obtención y mantenimiento de los estados de alerta, la orientación hacia estímulos, la selección de estímulos y eventos, y la regulación y dirección del pensamiento. Dado que la atención está presente en casi todas nuestras acciones cotidianas, es importante ejercitarla. El motivo se debe a que las fallas en la atención, además de tener un alto impacto en el funcionamiento diario, también podrían afectar el adecuado funcionamiento de otros dominios cognitivos como la memoria.\r\n\r\nExisten distintos modelos que intentan dar explicación a los sistemas que componen la atención, identificando redes neuronales específicas que se activan cuando realizamos determinadas tareas. Otros modelos, como el de Sohlberg y Mateer dividen la atención en distintos tipos: sostenida, focalizada o selectiva, dividida y alternada.\r\n\r\n\r\nLos ejercicios propuestos a continuación ejercitan la atención alternada. Este tipo de atención se relaciona con la capacidad para cambiar el foco atencional de una tarea a otra. Para ello se requiere de flexibilidad mental que permita el cambio y la realización de las diferentes tareas de manera eficiente.\r\n\r\nSon muchas las situaciones de la vida cotidiana en las que ponemos en juego este tipo de procesamiento cognitivo puesto. Por ejemplo, durante la preparación de una comida podemos requerir alternar entre cortar los alimentos y chequear un olla al fuego.',4,9,0),(6,'Los Murciélagos derrotaron a China y buscarán la medalla dorada frente a Brasil en los Juegos Paralímpicos de Tokio','2021-09-06 13:34:36',NULL,'Una tarea pendiente está a poco tiempo de volverse realidad. La selección argentina de fútbol para ciegos hizo historia y accedió a la final de los Juegos Paralímpicos que se están llevando a cabo en Tokio. Luego de derrotar a China por 2-0, los Murciélagos se aseguraron una medalla y disputarán el partido final frente al clásico sudamericano: Brasil. El próximo sábado a las 5:30 de la mañana (horario argentino), el equipo dirigido por Martín Demonte saldrá a la cancha en busca de la gloria.\r\n\r\nEl encuentro frente a los asiáticos comenzó con una ventaja temprana gracias a un penal que la gran figura albiceleste, Maximiliano Espinillo, aprovechó con un remate cruzado. En la segunda parte, nuevamente apareció el 15 para robar una pelota en la mitad de la cancha, sorprender con un remate cruzado y festejar luego de que la pelota rebotara contra el palo y la espalda del arquero chino. Con un poco de fortuna, el representativo nacional selló el 2-0 definitivo.',4,2,1),(7,'Apple permitirá que aplicaciones multimedia vinculen pagos fuera de la App Store','2021-09-02 17:53:55',NULL,'Una nueva acción legal ha llevado a que Apple desarrolle nuevas medidas para su tienda digital, App Store, que permitirían finalmente que las aplicaciones de servicios multimedia ofrezcan links para pagar con medios externos.\r\n\r\nComo parte de un acuerdo con la Comisión de Comercio Justo de Japón, que había estado investigando la App Store, Apple ha anunciado que cambiará un aspecto en específico de su tienda digital pues hasta ahora no permitía que las apps que ofrecieran servicios multimedia tuvieran links o algún tipo de enlace externo que permitiera el pago del mismo servicio en cuestión.\r\n\r\n\r\nEn la práctica esta medida restrictiva hacía ver las aplicaciones bastante inservibles de no ser que el usuario ya contara con una cuenta y suscripción activa. En el caso de Netflix, por ejemplo, hasta ahora al abrir el software solo se despliega un mensaje afirmando que, si el usuario no es miembro aún, primero hay que hacer todo el proceso en otra plataforma y luego regresar a usar la app una vez ya se esté inscrito.\r\n\r\nSegún aclaró la compañía, el cambio afectará únicamente al software que considera como “reader apps” o aplicaciones de lectura. Para Apple, esta categoría de programas se define como aquellas que “proporcionan contenido comprado previamente o suscripciones de contenido para revistas digitales, periódicos, libros, audio, música y video”. Por lo tanto, en este servicio se incluirían apps reconocidas como Netflix y Spotify.',4,4,0),(8,'El Banco Central se desprendió de US$ 270 millones en tres días para evitar que se escape el dólar','2021-09-06 13:34:36',NULL,'Para lograr que el dólar no se dispare a 10 días de las elecciones, el Central usa su poder de fuego al ofrecer más divisas para abastecer la dolarización en alza previa a las PASO.\r\n\r\nPero además esta semana dejó correr un poco más el tipo de cambio oficial. Este jueves, el dólar mayorista abrió en $ 97,83 por unidad, cinco centavos arriba del cierre de ayer. En cuatro ruedas subió 27 centavos. La semana pasada había avanzado 25 centavos en cinco ruedas.',8,5,1),(9,'Facebook integrará juegos de predicción basados en programas de TV','2021-09-02 17:53:55',NULL,'Facebook ha anunciado la inclusión oficial de “Juegos de Fantasía” a su red social mediante los cuales los usuarios podrán jugar a hacer predicciones de encuentros deportivos y hasta programas de televisión.\r\n\r\nEn un comunicado oficial, la red social anunció que lanzarán los “Facebook Fantasy Games”, una serie de juegos de predicción en los que los usuarios podrán participar con amigos y desconocidos de toda la plataforma, bajo la idea de que “ayudan a los fanáticos a disfrutar juntos de deportes, programas de televisión y contenido de cultura pop”.\r\n\r\n\r\nLos “Fantasy Games” o juegos de fantasía son un modelo de juego principalmente desarrollado en el área de deportes, a menudo jugado a través de Internet, en el que los participantes forman equipos virtuales compuestos por representantes de jugadores reales de un deporte profesional o participantes de un programa en su defecto.\r\n\r\nEl elemento más llamativo para muchos de los jugadores es que los resultados de estos juegos de predicción y la forman en que estos equipos compiten se da en función del rendimiento estadístico de esos jugadores en juegos reales. Por lo tanto, los resultados de los eventos presentados en la vida real serán los factores decisivos para conocer quién gana o pierde en estas competencias virtuales.\r\n\r\n“Estos juegos llevan la diversión social de los deportes de fantasía tradicionales a formatos más simples que son fáciles de jugar para personas nuevas en los juegos de predicción, mientras que siguen siendo lo suficientemente atractivos para jugadores más experimentados”, explicó Facebook sobre esta nueva integración a la plataforma.\r\n\r\nLa red social aclaró que la participación en estos juegos será completamente gratuita y con el objetivo explícito de ofrecer nuevas alternativas de diversión para que los usuarios compartan en la plataforma. Como parte del plan, se desarrollarán tablas de clasificación y “ligas de fantasía” que se podrán establecer como públicas o privadas para competir con otros usuarios de la plataforma.\r\n\r\nEl primer juego de predicción que estará disponible será Pick & Play Sports, el cual trabajará en colaboración con la red de eventos deportivos Whistle Sports para permitir jugar bajo el nombre de encuentros reconocidos como las Ligas Mayores de Béisbol (MLB) y La Liga Santander. También anunciaron que luego integrarán juegos basados en programas de TV tales como Survivor y The Bachelorette.',6,4,0),(10,'Advierten por la situación de jueces y abogados en Afganistán bajo el régimen de los talibanes','2021-09-02 17:53:55',NULL,'La International Bar Association, organización que reúne a abogados de todo el mundo, lanzó una voz de alerta por la seguridad de los jueces y profesionales del derecho en Afganistán ante el nuevo régimen talibán y las posibles represalias.\r\n\r\nEl organismo que reúne a más de 35 mil abogados profesionales y 197 colegios de abogados indicó que “el Estado de Derecho y la seguridad de la profesión jurídica vuelven a estar seriamente amenazados” ante la toma del poder por parte de los talibanes.\r\n\r\n\r\nPeter Goldsmith, ex fiscal general del Reino Unido entre 2001 y 2007, recalcó que están en juego la vida de personas “que han hecho cosas tremendas que nosotros y la ABA defendemos con toda razón”, como la búsqueda de una sociedad más justa. “Es una locura que no estuviéramos mejor preparados para esto. Tendremos que analizar dónde está la responsabilidad”, añadió Goldsmith, una de las principales voces en su país que reclamaban que la inclusión de juezas en el plan de Política de Reubicación y Asistencia a los Afganos.',7,10,0);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `e-mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Ariel','Ortega','ariel.ortega@yahoo.com'),(2,'Marcelo','Salas','m.salas@gmail.com'),(3,'Juan','Angel','j.p.angel@hotmail.com'),(4,'Gonzalo','Martinez','gonzalo.martinez@gmail.com'),(5,'Germán','Burgos','g.a.burgos@yahoo.com'),(6,'Ramiro','Funes','ramiro.funes@gmail.com'),(7,'Milton','Casco','m.casco@yahoo.com'),(8,'Hernán','Crespo','hernan.crespo@hotmail.com'),(9,'Juan','Monaco','j.monaco@gmail.com'),(10,'Antonio','Alzamendi','a.alzamendi@gmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyectodh'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-06 11:38:36
