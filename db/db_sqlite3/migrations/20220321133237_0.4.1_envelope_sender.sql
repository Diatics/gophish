-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE templates ADD COLUMN envelope_sender varchar(255);

INSERT INTO `smtp` VALUES (2,1,'SMTP','Phishup Office 365 (ikbal)','smtp.office365.com:587','ikbal@phishup.co','@nzVVhRHu@xd99y','ikbal@phishup.co','2024-02-01 10:47:06',1);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back