select * from db_pagina_digital.tb_livro;

ALTER TABLE db_pagina_digital.tb_livro
MODIFY COLUMN descricao VARCHAR(5000);

ALTER TABLE `db_pagina_digital`.`tb_livro`
MODIFY `numero_pagina` BIGINT NOT NULL DEFAULT 0;

DESCRIBE `db_pagina_digital`.`tb_livro`;

INSERT INTO db_pagina_digital.tb_livro (
  titulo,
  editora,
  numero_paginas,
  descricao,
  genero,
  situacao,
  foto,
  tb_autor_id
) VALUES (
  'Escuridão Total Sem Estrelas',
  'Suma 1ª edição (26 março 2015)',
  392,
  'Na ausência da luz, o mundo assume formas sombrias, distorcidas, tenebrosas. Nesses quatro contos, Stephen King leva seus personagens a esses momentos de escuridão total, quando não existe nada ― bom senso, piedade, justiça ou estrelas ― para guiá-los. O primeiro deles inspirou o filme 1922 , da Netflix.
Apesar de ter se tornado conhecido por seus romances, Stephen King também pode ser considerado um contista de sucesso, fazendo jus à fama de mestre do terror mesmo em poucas páginas. Em Escuridão total sem estrelas , King entrega quatro histórias curtas e aterrorizantes sobre o modo como lidamos com o mundo e como o mundo lida conosco.
O livro começa com o conto que inspirou o filme da Netflix, 1922 , em que um agricultor convida seu filho para fazer parte de um plano terrível, visando garantir a posse das terras da família. Em seguida, no conto Gigante do volante , uma mulher estuprada por um estranho e deixada à beira da morte elabora uma vingança que a faz encarar um lado desconhecido de si mesma. Depois, em Extensão justa , um homem com câncer terminal faz um pacto com um estranho vendedor e tem que decidir até onde vale a pena ir para salvar a própria vida. Por fim, em Um bom casamento , uma mulher encontra uma caixa na garagem que pode dizer mais sobre seu marido do que os vinte anos que eles passaram juntos.
Os contos de Escuridão total sem estrelas são poderosos e, cada um à sua maneira, profundamente chocantes ― The Guardian. Ao mergulhar nas histórias sinistras de Escuridão total sem estrelas , se deixando levar pela prosa vívida e brincalhona de Stephen King, o leitor pensa: caramba, esse cara está se divertindo. Um escritor que sente tanta alegria descarada no ato de contar uma história é uma raridade ― The New York Times',
  'Terror/Suspense',
  TRUE,
  'https://www.literalmenteuai.com.br/wp-content/uploads/2017/10/Escurid%C3%A3o-total-sem-estrelas-stephen-King.jpg',
  2
);




