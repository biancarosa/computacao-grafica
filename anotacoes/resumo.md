# Introdução a imagens digitais
- Imagem contínua
- discretização
- amostragem
- quantização
- reconstrução
- histogramas
- operações pontuais
- filtros espaciais

# Sistemas de Cor
Fundamentos físicos
- processos de formação
- percepção
visual
- sistemas de dispositivos e de interface
- manipulação de cores em
- imagens digitais

# Geometria
- Métodos de definição
- transformações lineares
- isometrias
- Geometria Euclidiana
- Geometria Afim
- Geometria Projetiva
- transformações projetivas
- projeções

# Coordenadas
- Referenciais e sistemas de coordenadas
- transformações de
- objetos e referenciais
- coordenadas locais e globais
- transformações 3D

# Introdução ao OpenGL
- arquitetura
- sintaxe
- interfaces de programação de
- aplicações complementares
- mapeamento window-viewport
- movimento de objetos
- modelagem e visualização
- textura e iluminação

# Introdução
Conjunto técnicas para transformar dados em imagens através de um dispositivo gráfico.


## Sub-áreas
- Modelagem Geométrica: trata de descrever e estruturar dados
geométricos no computador.

- Visualização ou Síntese de Imagens: utilização de dados
gerados por um sistema de modelagem geométrica para gerar
imagens.

- Processamento de Imagens: geração de novas imagens, a partir
de imagens existentes, adequadas para uma determinada
aplicação.

- Visão Computacional ou Análise de Imagens: extrai de uma
imagem (ou de um conjunto de imagens) informações sobre os
dados que a geraram, ou sobre objetos nela presentes.

## Interação energia-matéria
- Especular
- Difusa ou lambertiana
- Translúcida

## Paradigma dos 4 universos
- Físico - objeto no mundo real
- Matemático - Descrição abstrata do objeto
- Representação - Descrição simbólica finita
- Implementação -  Estrutura de Dados da Linguagem

## Passiva x Interativa
- Passiva não interage
- Interativa o usuário pode interagir

## Eficiencia x Realismo
Trade-off.

# Segmentação

Conceitos básicos de um conjunto de abordagens para a segmentação de imagens digitais.

Algoritmo de segmentação são baseados em uma ou duas propriedades básicas dos valores de intensidade dos pixels: 
1. descontinuidade
2. similaridade

## Detecção de bordas

Formulação básica:
Borda ideal: conjunto de pixels conectados, localizados em uma transição ortogonal dos valores de intensidade.
Borda real: tem um perfil de “rampa”.

Conclusões:
1. Magnitude da 1a derivada→ evidencia de uma borda
2. Sinal da 2a derivada determina lados claro/escuro
3. 2a derivada tem 2 valores para cada borda
4. Linha ligando os valores extremos (positivo e negativa) da 2a derivada cruza o zero no ponto médio

Ponto numa imagem é ponto de borda quando sua derivada de primeira ordem é maior que um limiar, ou está no cruzamento por zero da segunda derivada.

Borda: conjunto conectado de pontos de borda.
Borda ocorre na fronteira de duas regiões.

## Crescimento de regiões

Definição: procedimento que agrupa pixels ou sub-regiões em regiões maiores baseado em algum critério.

Envolve dois passos iterativos:
Seleciona um conjunto de “sementes”, e
Sementes/regiões crescem, agregando pixels vizinhos “similares”.