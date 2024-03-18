-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE templates ADD COLUMN envelope_sender varchar(255);

INSERT INTO `smtp` VALUES (2,1,'SMTP','Phishup Office 365 (ikbal)','smtp.office365.com:587','ikbal@phishup.co','@nzVVhRHu@xd99y','ikbal@phishup.co','2024-02-01 10:47:06',1);
INSERT INTO `group_targets` VALUES (5,7),(5,9),(6,10),(7,11),(5,12),(8,13),(8,14),(9,13),(9,15);
INSERT INTO `groups` VALUES (5,1,'Test Group Phishup','2024-02-13 11:56:18'),(6,1,'Test Yasin','2024-02-02 15:02:29'),(7,1,'ikbal test','2024-02-13 09:15:02'),(8,1,'Berke test1','2024-02-29 19:34:55'),(9,1,'Berke Bicak','2024-02-29 21:03:28');
INSERT INTO `targets` VALUES (1,'s','a','sales@phishup.co','s'),(2,'asd','asd','sales@phishup.co','ss'),(3,'sad','dsa','berke.bicak@hotmail.com','sdasd'),(4,'sad','asd','ataol@phishup.co','sad'),(5,'asd','ds','sales@phishup.co','asd'),(6,'Berke','d','berke.bicak@diatics.com','ad'),(7,'Berke','Bıçak','berke.bicak@diatics.com','Backend'),(8,'sd','dsd','ataol@phishup.co','ds'),(9,'Barış','Arslan','baris.arslan@diatics.com','Frontend'),(10,'Yasin','Perihan','yasin.perihan@diatics.com','Intern'),(11,'İkbal','test','ikbal@phishup.co',''),(12,'Berke','Bıçark','berke@phishup.co','Backend'),(13,'Berke','Bıçak','test@test.com','ss'),(14,'s','d','sales@phishup.co','c'),(15,'s','s','sales@phishup.co','ds');

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back