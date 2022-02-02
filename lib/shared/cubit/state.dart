abstract class WordsStates {}

class WordsInitialState extends WordsStates {}

class WordsLoadingGetWordDataState extends WordsStates {}

class WordsChangeToggleIndexState extends WordsStates {}

class WordsSuccessGetWordDefinitionState extends WordsStates {}

class WordsErrorGetWordDefinitionState extends WordsStates {
  String error;

  WordsErrorGetWordDefinitionState(this.error);
}

class WordsSuccessGetWordSynonymsState extends WordsStates {}

class WordsErrorGetWordSynonymsState extends WordsStates {
  String error;

  WordsErrorGetWordSynonymsState(this.error);
}

class WordsSuccessGetWordExamplesState extends WordsStates {}

class WordsErrorGetWordExamplesState extends WordsStates {
  String error;

  WordsErrorGetWordExamplesState(this.error);
}

class WordsSuccessGetWordRhymesState extends WordsStates {}

class WordsErrorGetWordRhymesState extends WordsStates {
  String error;

  WordsErrorGetWordRhymesState(this.error);
}

class WordsSuccessGetWordAntonymsState extends WordsStates {}

class WordsErrorGetWordAntonymsState extends WordsStates {
  String error;

  WordsErrorGetWordAntonymsState(this.error);
}

class WordsSuccessGetWordPronunciationState extends WordsStates {}

class WordsErrorGetWordPronunciationState extends WordsStates {
  String error;

  WordsErrorGetWordPronunciationState(this.error);
}

class WordsSuccessGetWordSyllablesState extends WordsStates {}

class WordsErrorGetWordSyllablesState extends WordsStates {
  String error;

  WordsErrorGetWordSyllablesState(this.error);
}

class WordsSuccessGetWordFrequencyState extends WordsStates {}

class WordsErrorGetWordFrequencyState extends WordsStates {
  String error;

  WordsErrorGetWordFrequencyState(this.error);
}

class WordsSuccessGetWordIsATypeOfState extends WordsStates {}

class WordsErrorGetWordIsATypeOfState extends WordsStates {
  String error;

  WordsErrorGetWordIsATypeOfState(this.error);
}

class WordsSuccessGetWordHasTypesState extends WordsStates {}

class WordsErrorGetWordHasTypesState extends WordsStates {
  String error;

  WordsErrorGetWordHasTypesState(this.error);
}

class WordsSuccessGetWordPartOfState extends WordsStates {}

class WordsErrorGetWordPartOfState extends WordsStates {
  String error;

  WordsErrorGetWordPartOfState(this.error);
}

class WordsSuccessGetWordHasPartsState extends WordsStates {}

class WordsErrorGetWordHasPartsState extends WordsStates {
  String error;

  WordsErrorGetWordHasPartsState(this.error);
}

class WordsSuccessGetWordIsAnInstanceOfState extends WordsStates {}

class WordsErrorGetWordIsAnInstanceOfState extends WordsStates {
  String error;

  WordsErrorGetWordIsAnInstanceOfState(this.error);
}

class WordsSuccessGetWordHasInstanceState extends WordsStates {}

class WordsErrorGetWordHasInstanceState extends WordsStates {
  String error;

  WordsErrorGetWordHasInstanceState(this.error);
}

class WordsSuccessGetWordSimilarToState extends WordsStates {}

class WordsErrorGetWordSimilarToState extends WordsStates {
  String error;

  WordsErrorGetWordSimilarToState(this.error);
}

class WordsSuccessGetWordAlsoState extends WordsStates {}

class WordsErrorGetWordAlsoState extends WordsStates {
  String error;

  WordsErrorGetWordAlsoState(this.error);
}

class WordsSuccessGetWordEntailsState extends WordsStates {}

class WordsErrorGetWordEntailsState extends WordsStates {
  String error;

  WordsErrorGetWordEntailsState(this.error);
}

class WordsSuccessGetWordMemberOfState extends WordsStates {}

class WordsErrorGetWordMemberOfState extends WordsStates {
  String error;

  WordsErrorGetWordMemberOfState(this.error);
}

class WordsSuccessGetWordHasMembersState extends WordsStates {}

class WordsErrorGetWordHasMembersState extends WordsStates {
  String error;

  WordsErrorGetWordHasMembersState(this.error);
}

class WordsSuccessGetWordSubstanceOfState extends WordsStates {}

class WordsErrorGetWordSubstanceOfState extends WordsStates {
  String error;

  WordsErrorGetWordSubstanceOfState(this.error);
}

class WordsSuccessGetWordHasSubstancesState extends WordsStates {}

class WordsErrorGetWordHasSubstancesState extends WordsStates {
  String error;

  WordsErrorGetWordHasSubstancesState(this.error);
}

class WordsSuccessGetWordInCategoryState extends WordsStates {}

class WordsErrorGetWordInCategoryState extends WordsStates {
  String error;

  WordsErrorGetWordInCategoryState(this.error);
}

class WordsSuccessGetWordHasCategoriesState extends WordsStates {}

class WordsErrorGetWordHasCategoriesState extends WordsStates {
  String error;

  WordsErrorGetWordHasCategoriesState(this.error);
}

class WordsSuccessGetWordUsageOfState extends WordsStates {}

class WordsErrorGetWordUsageOfState extends WordsStates {
  String error;

  WordsErrorGetWordUsageOfState(this.error);
}

class WordsSuccessGetWordHasUsagesState extends WordsStates {}

class WordsErrorGetWordHasUsagesState extends WordsStates {
  String error;

  WordsErrorGetWordHasUsagesState(this.error);
}

class WordsSuccessGetWordInRegionState extends WordsStates {}

class WordsErrorGetWordInRegionState extends WordsStates {
  String error;

  WordsErrorGetWordInRegionState(this.error);
}

class WordsSuccessGetWordRegionOfState extends WordsStates {}

class WordsErrorGetWordRegionOfState extends WordsStates {
  String error;

  WordsErrorGetWordRegionOfState(this.error);
}

class WordsSuccessGetWordPertainsState extends WordsStates {}

class WordsErrorGetWordPertainsState extends WordsStates {
  String error;

  WordsErrorGetWordPertainsState(this.error);
}