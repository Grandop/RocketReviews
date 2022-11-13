//
//  MediaListViewControllerExtension.swift
//  Rocket Media Reviews
//
//  Created by Julia Eileen Schäfer on 10/11/22.
//

import Foundation
import UIKit

// MARK: Authors and Medias
// esse é o arquivo que gera os autores e as mídias pro MediaListViewController

extension HomeViewController {
    func createAuthors() -> [Author] {
        return [
            Author(
                name: "Aline",
                avatar: #imageLiteral(resourceName: "Aline"),
                description: "Oi, pessoal! Sou a Aline, tenho 30 anos, sou apaixonada por musculação, adoro fazer trilhas, amo café. Tenho um filho chamado Henrique e uma filha (gata) chamada Luna.",
                github: "https://github.com/alinedoamaral05",
                instagram: "https://www.instagram.com/alinedoamaral_",
                linkedin: "https://www.linkedin.com/in/aline-do-amaral-5b957a235/"
            ),
            Author(
                name: "Émerson",
                avatar: #imageLiteral(resourceName: "Émerson"),
                description: "E aí pessoal, curto muito acampar e fazer trilhas, uma praia é sempre bem-vinda, porém, gosto mesmo é da serra e de ir para o meio do mato desvendar novas cachoeiras 😆. Também gosto muito de ir em cafeterias e restaurantes, principalmente com ambiente rústico.",
                github: "https://github.com/emersonmluz",
                instagram: "https://instagram.com/emersonmluz/",
                linkedin: "https://linkedin.com/in/emersonmluz"
            ),
            Author(
                name: "Vinicius",
                avatar: #imageLiteral(resourceName: "Vinicius"),
                description: "Opa, me chamo Vinicius, 26 anos. Sou uma pessoa introvertida e tímida, infelizmente, porém converso bastante quando vou me soltando. Se precisarem de ajuda só me chamar pra gnt tentar resolver haha.",
                github: "https://github.com/viniciusbluz",
                instagram: "https://instagram.com/emersonmluz/",
                linkedin: "https://www.linkedin.com/in/viniciusbarretoluz/"
            ),
            Author(
                name: "Renan",
                avatar: #imageLiteral(resourceName: "Renan"),
                description: "Opa pessoal! Sou o Renan, tenho 28 anos. Apaixonado por tecnologia, música, esportes, games e arte. Tenho dois filhos pets (gatos) o Tom e Romeu. A praia é um dos meus lugares favoritos.",
                github: "https://github.com/renanmatos1",
                instagram: "https://www.instagram.com/renan_matos/",
                linkedin: "https://www.linkedin.com/in/renan-matos-901455198/"
            ),
            Author(
                name: "Otávio",
                avatar: #imageLiteral(resourceName: "Otávio"),
                description: "Oii, sou o Otávio, tenho 18 anos, adoro jogar qualquer tipo de games, praticar vários esporte nas horas vagas e adoro sair para conversar no sol.",
                github: "https://github.com/Otavinhofs",
                instagram: "https://www.instagram.com/otavinhofs/",
                linkedin: "https://www.linkedin.com/in/otavio-fraga/"
            ),
            Author(
                name: "Livia",
                avatar: #imageLiteral(resourceName: "Livia"),
                description: "E aí galeris, meu nome é Livia, tenho 20 anos. Nos momentos livres eu gosto de ler, assistir séries, escutar uma musiquinha e encontrar com meus amigos.",
                github: "https://github.com/liviamachado01",
                instagram: "https://www.instagram.com/livia_mach/"
            ),
            Author(
                name: "Raul",
                avatar: #imageLiteral(resourceName: "Raul"),
                description: "E aí, pessoal! Sou o Raul, tenho 22 anos e curso Jogos Digitais na Unisinos. Gosto de tudo um pouco (jogos, séries, filmes, música). No meu tempo livre assisto algo com a minha esposa, quando estou sozinho toco violão ou jogo alguma coisa(bem raro ultimamente).",
                github: "https://github.com/RaulMdrs",
                instagram: "https://www.instagram.com/raulmdrs/"
            ),
            Author(
                name: "Yuri",
                avatar: #imageLiteral(resourceName: "Yuri"),
                description: "Salve pessoal, meu nome é Yuri tenho 25 anos estou cursando análise e desenvolvimento de sistemas, no meu tempo livre gosto de jogos, filmes e animes. E estou muito empolgado com o treinamento.",
                github: "https://github.com/YuriGoulart01",
                instagram: "https://www.instagram.com/sweet.nocab/"
            ),
            Author(
                name: "Pedro",
                avatar: #imageLiteral(resourceName: "Pedro"),
                description: "Opa! sou o Pedro, 18 anos, curto muito musculação, jogar no pc e topo fazer qualquer tipo de esporte também!",
                github: "https://github.com/Grandop",
                instagram: "https://www.instagram.com/grando_03/",
                linkedin: "https://www.linkedin.com/in/pedro-grando-299300225/"
            ),
            Author(
                name: "Bruna",
                avatar: #imageLiteral(resourceName: "Bruna"),
                description: ""
            )
        ]
    }
    
    func findAuthor(name: String) -> Author? {
        authorsList.first { author in
            author.name == name
        }
    }
    
    func createMedias() -> [Media] {
        return [
            Media(
                title: "Peaky Blinders",
                image: #imageLiteral(resourceName: "peaky-blinders"),
                description: "A história se passa na Grã-Bretanha em 1919 e acompanha a família Shelby, uma gangue cruel que prosperou após a Primeira Guerra Mundial, quando atividades do submundo, como o comércio ilegal de armas, esquema ilegal de aposta em corrida de cavalos, proteção e golpes de jogo se tornaram frequentes.",
                synopsis: "Com personagens fictícios entre fatos e personalidades da vida real, a série Peaky Blinders navega pela história europeia do início do século XX, indo desde o fim da I Guerra Mundial, passando pela ascensão do comunismo e dos levantes operários, até culminar nos horrores do fascismo e do nazismo.",
                review: "Gostei muito, inclusive já assisti mais de 3 vezes mostra muito a realiade da população da época, e as situações políticas da Inglaterra. Recomendo muito!",
                author: findAuthor(name: "Pedro")!
            ),
            Media(
                title: "Sword Art Online",
                image: #imageLiteral(resourceName: "sword_art_online"),
                description: "Um garoto que gostava de video games se envolve em uma aventura em um jogo da morte e conhece muitos amigos assim como inimigos e o amor de sua vida.",
                synopsis: "O game conta a história de 10.000 jovens que acabam ficando presos dentro de um game do gênero MMORPG (Massive Multiplayer Online Role-Playing Game, ou jogo de RPG que pode ser jogado por múltiplos jogadores), que leva o mesmo nome do título, através de um capacete que estimula todos os seus sentidos.",
                review: "Melhor anime de todos os tempos.",
                author: findAuthor(name: "Yuri")!
            ),
            Media(
                title: "House of the Dragon",
                image: #imageLiteral(resourceName: "HODT"),
                description: "Série baseada no livro de George R. R. Martin. Tem tudo para ser melhor do que as ultimas 3 temporadas de GOT :D",
                synopsis: "O rei Viserys targaryen nomeia sua filha Rhaenyra como sua herdeira após a morte de sua esposa e o fracasso de ambos em gerar um herdeiro homem. Grande parte do reino não apoia Rhaenyra como sua possível nova rainha e diversos lordes começam a considerar a ideia de que o rei gere um herdeiro homem com uma nova esposa. A partir daí diversos embates políticos começam a ocorrer e o reino se divide em dois grupos, os verdes e os negros, apoiadores do filho do rei com Alicent (sua nova esposa) e apoiadores de Rhaenyra.",
                review: "Pessoalmente acredito que a série esteja tomando um ótimo rumo, com roteiro envolvente e cenários incríveis. Acredito que a melhor parte da trama ainda não tenha chegado mas a HBO está conduzindo essa chegada de maneira incrível. Quem assistiu GOT e gostou do jogo político com certeza vai gostar pelo menos desta primeira temporada de House of the Dragon. Ah, e tem dragões de montão.",
                author: findAuthor(name: "Raul")!
            ),
            Media(
                title: "Friends",
                image: #imageLiteral(resourceName: "friends"),
                description: "A série gira em torno de seis amigos, Monica, Chandler, Joey, Phoebe, Ross e Rachel que passam por diversos desafios da vida adulta nos anos 90. A série possui 10 temporadas onde podemos observar a evolução dos personagens e como se relacionam.",
                synopsis: "Após Rachel abandonar o noivo no altar ela vai procurar a amiga de infância, Monica Geller, no Central Perk, cafeteria onde costumam passar o tempo. Monica acolhe a amiga e juntamente com os demais, a incentiva a buscar independência financeira. A partir desse marco inicial as amizades entre o grupo começam a tomar destaque e algumas delas se tornam relacionamentos amorosos.",
                review: "Esta é minha série favorita, é um sitcom leve e que proporciona risadas facilmente além de retratar o dia a dia que aproxima a série ao público.",
                author: findAuthor(name: "Livia")!
            ),
            Media(
                title: "One Piece",
                image: #imageLiteral(resourceName: "one-piece"),
                description: "One Piece é um anime que conta a história do jovem Monkey D. Luffy, que ganhou poderes de borracha depois de comer uma fruta do diabo. O enredo mostra as aventuras de Luffy e seu grupo, Os Piratas de Chapéu de Palha, em busca do One Piece, o tesouro mais procurado do mundo.",
                synopsis: "Premissa. A série centra-se em Monkey D. Luffy, um jovem que, inspirado por seu ídolo de infância e poderoso pirata Shanks, \"o Ruivo\", sai em uma jornada do mar East Blue para encontrar o famoso tesouro One Piece e proclamar-se o Rei dos Piratas.",
                review: "Comecei a assistir não faz muito tempo e ando gostando muito, é um anime muito comprido tendo mais de mil episódios e a cada semanda lançando mais epiódios que acabam surpreendendo muito.",
                author: findAuthor(name: "Otávio")!
            ),
            Media(
                title: "Fresh Prince",
                image: #imageLiteral(resourceName: "fresh_prince"),
                description: "Série de reconhecimento mundial nos anos 90, onde aborta conflitos sociais e raciais, tendo como veia principal a comédia.",
                synopsis: "Tendo como protagonista principal o famoso ator Will Smith, onde seu personagem \"Will\" se muda da Filadélfia para a casa dos tios, situada na Califórnia, em um bairro de alto padrão chamado Bal-Air.\n\nEstreiando em setembro de 1990, com duração até maio de 1996, a série além de ser cômica, trás a realidade de muitos conflitos racistas no norte-americano, e também com o bullying social. Will se muda para ter uma vida academica de ponta na universidade, porém se depara com muitos problemas e conflitos com amigos, familiares e em algumas cituações de perigo. Seu tio, \"Phillip Banks\" é juiz, e sempre acaba explicando e ensinando Will a lidar da melhor maneira com as adversidades, sendo um garoto do subúrbio, encontra muita dificuldade em se encaixar socialmente onde vive.",
                review: "Gosto muito até hoje, série que fez parte da minha infância, juntamente das críticas aplicadas nela, uma ótima série onde trás a reflexão social onde vivemos, a cada episódio podemos aprender uma lição nova sobre a vida.",
                author: findAuthor(name: "Renan")!
            ),
            Media(
                title: "Senhor dos Anéis: Os anéis do poder",
                image: #imageLiteral(resourceName: "senhorDosAneis"),
                description: "A série do Senhor dos anéis se passa na época em que os anéis do poder estavam prester a serem criados, por Sauron que está resurgindo depois de morrer em uma guerra. Ao decorrer dos epsódios vamos descobrir como Sauron irá conseguir renascer e forjar os anéis.",
                synopsis: "O drama épico que se passa milhares de anos antes de A Sociedade do Anel, tem foco em um momento da história em que grandes poderes foram forjados, reinos ascenderam e também ruíram, ao mesmo tempo em que heróis foram testados e tiveram a esperança quase aniquilada pelo grande vilão do universo de Senhor dos Anéis. A série começa em um momento de paz, quando o elenco de novos e antigos personagens precisam enfrentar o ressurgimento do mal, vindo das profundezas mais escuras das Montanhas Sombrias. Os reinos e personagens irão esculpir legados que viverão por muito tempo depois que eles se forem.",
                review: "Acredito que o universo fictício escrito pelo Tolkein tem um incrível potencial, e finalmente está sendo criada uma série sobre os livros dele. Então estou relevando defeitos e criticas negativas da série haha como a personagem Galadriel, que está tão sem sal por enquanto :( Porém o resto dos personagens e mundos não estão me decepcionando, como o reino dos anões que está muito da hora. Enfim é uma boa série, recomendo, principalmente para quem é fã do Tolkin e e dos seus livros.",
                author: findAuthor(name: "Vinicius")!
            ),
            Media(
                title: "Sense 8",
                image: #imageLiteral(resourceName: "sense8"),
                description: "Dos mesmos criadores de Matrix.",
                synopsis: "A série conta a história de oito pessoas desconhecidas, cada uma dessas pessoas é de uma cultura e um país diferente. Tudo começa quando todos tem uma visão da morte violenta de uma mulher chamada Angelica, a partir de então, eles descobrem estar mentalmente e emocionalmente ligados um ao outro, sendo capazes de se comunicar, sentir e apoderar-se do conhecimento e habilidades um dos outro. Ao mesmo tempo que tentam entender seus dons, precisam lutar para escapar de uma organização que deseja matá-los.",
                review: "Uma série que te prende em cada episódio, apesar de demorar (e muito) para entendermos as motivações da organização em caçar os personagens, a série consegue manter o espectador motivado em continuar assistindo. Ao mesmo tempo que acampanhamos a história principal envolvendo todos os personagens, também acampanhmos a história e dramas pessoais de cada um, são oito histórias distintas em uma história principal cheio de ação, drama e uma pitada de comédia e romance.",
                author: findAuthor(name: "Émerson")!
            ),
            Media(
                title: "The Office",
                image: #imageLiteral(resourceName: "the_office"),
                description: "This image is related to The Office cast.",
                synopsis: "The office is a great comedy TV series about a daily routine at a paper branch company named Dundler Mifflin. It's like a documentary about each worker personal and professional life.",
                review: "I love the series, cause it made me laugh and cry. By the first sight, I thought I wouldn't like it, cause some episodes are a bit acid, on the other hand, the plot becomes very moving as you know the know the characters.",
                author: findAuthor(name: "Aline")!
            ),
            Media(
                title: "Advogada Extraordinária",
                image: #imageLiteral(resourceName: "advogadaextraordinaria"),
                description: "Série baseada em uma história real de uma advogada com transtorno expectro autista que possui um inteligência acima do padrão.",
                synopsis: "Em Uma Advogada Extraordinária, Woo Young Woo (Park Eun Bin) é uma advogada de 27 anos no espectro autista. Young Woo é uma profissional excelente, tendo o QI de 164, ela se formou como a melhor estudante da turma na prestigiada Universidade Nacional de Seoul. Devido à sua inteligência e memória fotográfica, ela conseguiu um trabalho em um grande escritório de advocacia. Por outro lado, emocionalmente, Young Woo não se dá muito bem com interações sociais. Como resultado, muitos a enxergam como uma esquisita ou solitária, tendo sido alvo de bullying na escola. A série tem foco no crescimento de Young Woo como advogada e pessoa, enquanto ela conhece novas pessoas que irão fazer a diferença em sua vida.",
                review: "Gostei bastante da série, por ser baseada em fatos reais, pois mostra a realidade das pessoas que possuem TEA, e a dificuldade que passam para serem incluidas na sociedade que mesmo com acesso as informacoes menosprezam suas necessidades tornando mais dificil a sua inclusao.",
                author: findAuthor(name: "Bruna")!
            )
        ]
    }
}
