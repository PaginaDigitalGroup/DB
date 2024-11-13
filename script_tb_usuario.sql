select * from db_pagina_digital.tb_usuario;


SHOW DATABASES;

ALTER TABLE tb_livro 
ADD CONSTRAINT fk_livro_autor 
FOREIGN KEY (tb_autor_id) REFERENCES tb_autor(id);

USE db_pagina_digital;

DESCRIBE tb_usuario;

ALTER TABLE tb_usuario DROP COLUMN tipo_usuario;

ALTER TABLE tb_livro DROP FOREIGN KEY fk_usuario_id;



ALTER TABLE tb_livro
ADD COLUMN usuario_id bigint,
ADD CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES tb_usuario(id);


ALTER TABLE db_pagina_digital.tb_usuario
DROP COLUMN tipoUsuario;

INSERT INTO db_pagina_digital.tb_usuario (tipoUsuario, nome, usuario, senha) VALUES ('MASTER', 'Usu Teste', 'usuteste@email.com', '12345678');

