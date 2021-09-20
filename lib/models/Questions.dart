class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "A pessoa conhecida como O menino que estourou é: ______",
    "options": ['João', 'Lucas', 'Melqui', 'Felipe'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Quando a google lançou o flutter?",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Um local de memória que contém uma única letra ou número.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Por que o computador foi preso?",
    "options": ['Por roubo', 'Sonegou imposto', 'Executou um programa', 'Nenhuma'],
    "answer_index": 2,
  },
];
