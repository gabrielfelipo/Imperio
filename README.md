# Império - Plataforma de Apostas Esportivas

Império é uma plataforma desenvolvida em Flutter para auxiliar apostas esportivas. Com ela, você pode acompanhar as odds, ver as melhores odds, detalhes sobre os times de uma partida selecionada, embates anteriores entre os times, informações do juiz e muito mais.

## Funcionalidades

- **Visualização de Odds:** Acompanhe as odds em tempo real para diversas partidas.
- **Melhores Odds:** Veja as melhores odds disponíveis.
- **Detalhes das Partidas:** Informações detalhadas sobre os times de uma partida selecionada.
- **Histórico de Embates:** Veja os resultados de confrontos anteriores entre os times.
- **Informações do Juiz:** Detalhes sobre o juiz que irá apitar a partida.

## Tecnologias Utilizadas

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [Mobx](https://pub.dev/packages/mobx)
- [Modular](https://pub.dev/packages/flutter_modular)
- [Dio](https://pub.dev/packages/dio)

## Organização de tasks

Foi utilizado um Kanban para organizar as tasks necessárias para o desenvolvimento do projeto.
<img width="640" alt="Captura de Tela 2024-06-09 às 11 07 21" src="https://github.com/gabrielfelipo/Imperio/assets/54708833/57c83d03-75f9-4f99-8303-17f9a971120f">

## Pré-requisitos

Antes de começar, certifique-se de ter as seguintes ferramentas instaladas:

- [Flutter](https://flutter.dev/docs/get-started/install) (versão 2.0 ou superior)
- [Dart](https://dart.dev/get-dart) (versão 2.12 ou superior)
- [Android Studio](https://developer.android.com/studio) ou [Visual Studio Code](https://code.visualstudio.com/)

## Configuração do Ambiente

1. Clone o repositório para sua máquina local:
    ```sh
    git clone https://github.com/seu-usuario/imperio.git
    cd imperio
    ```

2. Instale as dependências:
    ```sh
    flutter pub get
    ```

3. Configure um dispositivo emulador ou conecte seu dispositivo físico:
    - Para configurar um emulador, você pode usar o Android Studio.
    - Para usar um dispositivo físico, habilite a depuração USB e conecte-o ao seu computador.

4. Execute o aplicativo:
    ```sh
    flutter run
    ```

## Estrutura do Projeto

Abaixo está a estrutura principal do projeto:
lib
├── app
│ ├── modules
│ │ ├── home
│ │ ├── landing
│ │ ├── match
│ │ ├── search
│ │ ├── shared
│ │ └── users
│ ├── app_module.dart
│ └── app_widget.dart
├── core
│ ├── components
│ ├── fonts
│ ├── structures
│ │ ├── Labels.dart
│ │ └── my_colors.dart
├── main.dart
├── assets # Recursos estáticos (imagens, fontes, etc.)
├── test # Testes unitários e de widget
└── pubspec.yaml # Arquivo de configuração do Flutter


### Módulo
Cada Módulo é estruturado da seguinte forma, seguindo os conceitos de Clean Archtecture:

modules
└── home
    ├── data
    │   ├── datasources
    │   └── repositories
    ├── domain
    │   ├── models
    │   │   └── dtos
    │   ├── repositories
    │   └── usecases
    ├── external
    │   └── datasources
    │       └── home_datasource_impl.dart
    └── presentation
        ├── enums
        └── pages
    └── home_module.dart

## Contato

Para mais informações, entre em contato:

- Nome: Gabriel Felipo Raeli de Melo
- Email: gabriel.felipo2010@gmail.com
- LinkedIn: [Gabriel_Felipo](https://www.linkedin.com/in/gabriel-felipo-raeli-20329a1b1/)

---

Feito por [Gabriel Felipo](https://github.com/gabrielfelipo)
