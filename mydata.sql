BEGIN TRANSACTION;
INSERT INTO "brand" VALUES ('CKjeans','DongDeaMunStreet', 2200);
INSERT INTO "brand" VALUES ('Gucci','SongDo', 3000);
INSERT INTO "brand" VALUES ('Covernot','Ansan', 1500);
INSERT INTO "brand" VALUES ('Levis','SinDoRim', 2500);
INSERT INTO "brand" VALUES ('Hermes','GangNam', 5000);
INSERT INTO "brand" VALUES ('Giordano','BuPeung', 1000);
INSERT INTO "brand" VALUES ('Nike','Juan', 10000);


INSERT INTO "salesplatform" VALUES ('Musinsa', NULL, 2);
INSERT INTO "salesplatform" VALUES ('29CM', NULL, 1);
INSERT INTO "salesplatform" VALUES ('Coopang', 'proceeding', 4);
INSERT INTO "salesplatform" VALUES ('HipHoper', 'proceeding', 3);


INSERT INTO "clothes" VALUES ('1', 'outer', 'balck', 'Covernot', 89000, 'Musinsa');
INSERT INTO "clothes" VALUES ('2', 'bottom', 'balck', 'Levis', 119000, 'HipHoper');
INSERT INTO "clothes" VALUES ('3', 'top', 'blue', 'CKjeans', 39000, 'Coopang');
INSERT INTO "clothes" VALUES ('4', 'outer', 'white', 'Gucci', 779000, 'Musinsa');
INSERT INTO "clothes" VALUES ('5', 'bottom', 'denim', 'Ckjeans', 99000, '29CM');
INSERT INTO "clothes" VALUES ('6', 'outer', 'balck', 'Giordano', 75000, 'Coopang');
INSERT INTO "clothes" VALUES ('7', 'bottom', 'denim', 'Levis', 199000, '29CM');
INSERT INTO "clothes" VALUES ('8', 'shoes', 'red', 'Nike', 289000, 'Musinsa');
INSERT INTO "clothes" VALUES ('9', 'shoes', 'white', 'Nike', 119000, 'Musinsa');
INSERT INTO "clothes" VALUES ('10', 'shoes', 'blue', 'Nike', 69000, 'Coopang');
INSERT INTO "clothes" VALUES ('11', 'top', 'white', 'Covernot', 48000, 'Musinsa');
INSERT INTO "clothes" VALUES ('12', 'bottom,', 'denim', 'Giordano', 49000, 'Musinsa');
INSERT INTO "clothes" VALUES ('13', 'shoes', 'red', 'Gucci', 449000, 'HipHoper');
INSERT INTO "clothes" VALUES ('14', 'outer', 'black', 'Nike', 249000, 'Musinsa');
INSERT INTO "clothes" VALUES ('15', 'acc', 'gold', 'Hermes', 11289000, '29CM');
INSERT INTO "clothes" VALUES ('16', 'shoes', 'gold', 'Nike', 679000, 'HipHoper');

COMMIT;

