class DiseaseModel {
  final String title;
  final String? trailing;
  final String description;
  final String perecentage;

  DiseaseModel({
    required this.title,
    this.trailing,
    required this.description,
    required this.perecentage,
  });
}

List<DiseaseModel> dieaselist = [
  DiseaseModel(
    title: 'Migraine',
    trailing: "FITS THE MOST",
    description: 'Severe headache nausea fatigue',
    perecentage: '91%',
  ),
  DiseaseModel(
    title: 'Influenza',
    description: 'Fever body pain headache fatigue',
    perecentage: '58%',
  ),
  DiseaseModel(
    title: 'COVID-19',
    trailing: "FITS THE MOST",
    description: 'Cough fever headache fatigue',
    perecentage: '66%',
  ),
  DiseaseModel(
    title: 'Dengue Fever',
    description: 'High fever headache weakness fatigue',
    perecentage: '84%',
  ),
  DiseaseModel(
    trailing: "FITS THE MOST",

    title: 'Typhoid',
    description: 'Fever stomach pain headache fatigue',
    perecentage: '90%',
  ),
  DiseaseModel(
    title: 'Anemia',
    description: 'Weakness dizziness headache fatigue',
    perecentage: '78%',
  ),
  DiseaseModel(
    title: 'Sinusitis',
    description: 'Sinus pressure headache tiredness',
    perecentage: '76%',
  ),
  DiseaseModel(
    trailing: "FITS THE MOST",

    title: 'Hypothyroidism',
    description: 'Low energy fatigue headache weight gain',
    perecentage: '74%',
  ),
];
