import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/models/also_model.dart';
import 'package:words/models/antonyms_model.dart';
import 'package:words/models/definition_model.dart';
import 'package:words/models/entails_model.dart';
import 'package:words/models/exampeles_model.dart';
import 'package:words/models/frequency_model.dart';
import 'package:words/models/has_categories_model.dart';
import 'package:words/models/has_instances_model.dart';
import 'package:words/models/has_member_model.dart';
import 'package:words/models/has_parts_model.dart';
import 'package:words/models/has_substances_model.dart';
import 'package:words/models/has_types_model.dart';
import 'package:words/models/has_usage_model.dart';
import 'package:words/models/in_category_model.dart';
import 'package:words/models/in_region_model.dart';
import 'package:words/models/is_a_type_of_model.dart';
import 'package:words/models/is_an_instance_of_model.dart';
import 'package:words/models/member_of_model.dart';
import 'package:words/models/part_of_model.dart';
import 'package:words/models/pertains_to_model.dart';
import 'package:words/models/pronunciation_model.dart';
import 'package:words/models/region_of_model.dart';
import 'package:words/models/rhymes_model.dart';
import 'package:words/models/similar_to_model.dart';
import 'package:words/models/substance_of_model.dart';
import 'package:words/models/syllables_model.dart';
import 'package:words/models/synonyms_model.dart';
import 'package:words/models/usage_of_model.dart';
import 'package:words/shared/cubit/state.dart';
import 'package:words/shared/network/end_point.dart';
import 'package:words/shared/network/remote/dio_helper.dart';

class WordsCubit extends Cubit<WordsStates> {
  WordsCubit() : super(WordsInitialState());

  static WordsCubit get(context) => BlocProvider.of(context);

  int toggleIndex = 0;

  void changeToggleIndex (int index) {
    toggleIndex = index;
    emit(WordsChangeToggleIndexState());
  }

  // Word ****************************************************************************************************************************

  DefinitionsModel? definitionsModel;
  void getWordDefinitionData({
  required String word,
}) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$DEFINITIONS',
    ).then((value) {
      definitionsModel = DefinitionsModel.fromJson(value.data);
      emit(WordsSuccessGetWordDefinitionState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordDefinitionState(error.toString()));
    });
  }

  SynonymsModel? synonymsModel;
  void getWordSynonymsData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$SYNONYMS',
    ).then((value) {
      synonymsModel = SynonymsModel.fromJson(value.data);
      emit(WordsSuccessGetWordSynonymsState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordSynonymsState(error.toString()));
    });
  }

  ExamplesModel? examplesModel;
  void getWordExamplesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$EXAMPLES',
    ).then((value) {
      examplesModel = ExamplesModel.fromJson(value.data);
      emit(WordsSuccessGetWordExamplesState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordExamplesState(error.toString()));
    });
  }

  RhymesModel? rhymesModel;
  void getWordRhymesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$RHYMES',
    ).then((value) {
      rhymesModel = RhymesModel.fromJson(value.data);
      emit(WordsSuccessGetWordRhymesState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordRhymesState(error.toString()));
    });
  }

  AntonymsModel? antonymsModel;
  void getWordAntonymsData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$ANTONYMS',
    ).then((value) {
      antonymsModel = AntonymsModel.fromJson(value.data);
      emit(WordsSuccessGetWordAntonymsState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordAntonymsState(error.toString()));
    });
  }

  PronunciationModel? pronunciationModel;
  void getWordPronunciationData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$PRONUNCIATION',
    ).then((value) {
      pronunciationModel = PronunciationModel.fromJson(value.data);
      emit(WordsSuccessGetWordPronunciationState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordPronunciationState(error.toString()));
    });
  }

  SyllablesModel? syllablesModel;
  void getWordSyllablesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$SYLLABLES',
    ).then((value) {
      syllablesModel = SyllablesModel.fromJson(value.data);
      emit(WordsSuccessGetWordSyllablesState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordSyllablesState(error.toString()));
    });
  }

  FrequencyModel? frequencyModel;
  void getWordFrequencyData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$FREQUENCY',
    ).then((value) {
      frequencyModel = FrequencyModel.fromJson(value.data);
      emit(WordsSuccessGetWordFrequencyState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordFrequencyState(error.toString()));
    });
  }

// Related Word ********************************************************************************************************************

  IsATypeOfModel? isATypeOfModel;
  void getWordIsATypeOfData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$ISATYPEOF',
    ).then((value) {
      isATypeOfModel = IsATypeOfModel.fromJson(value.data);
      emit(WordsSuccessGetWordIsATypeOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordIsATypeOfState(error.toString()));
    });
  }

  HasTypesModel? hasTypesModel;
  void getWordHasTypesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$HASTYPES',
    ).then((value) {
      hasTypesModel = HasTypesModel.fromJson(value.data);
      emit(WordsSuccessGetWordHasTypesState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordHasTypesState(error.toString()));
    });
  }

  PartOfModel? partOfModel;
  void getWordPartOfData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$PARTOF',
    ).then((value) {
      partOfModel = PartOfModel.fromJson(value.data);
      emit(WordsSuccessGetWordPartOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordPartOfState(error.toString()));
    });
  }

  HasPartsModel? hasPartsModel;
  void getWordHasPartsData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$HASPARTS',
    ).then((value) {
      hasPartsModel = HasPartsModel.fromJson(value.data);
      emit(WordsSuccessGetWordHasPartsState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordHasPartsState(error.toString()));
    });
  }

  IsAnInstanceOfModel? isAnInstanceOfModel;
  void getWordIsAnInstanceOfData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$ISANINSTANCEOF',
    ).then((value) {
      isAnInstanceOfModel = IsAnInstanceOfModel.fromJson(value.data);
      emit(WordsSuccessGetWordIsAnInstanceOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordIsAnInstanceOfState(error.toString()));
    });
  }

  HasInstancesModel? hasInstancesModel;
  void getWordHasInstancesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$HASINSTANCES',
    ).then((value) {
      hasInstancesModel = HasInstancesModel.fromJson(value.data);
      emit(WordsSuccessGetWordHasInstanceState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordHasInstanceState(error.toString()));
    });
  }

  SimilarToModel? similarToModel;
  void getWordSimilarToData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$SIMILARTO',
    ).then((value) {
      similarToModel = SimilarToModel.fromJson(value.data);
      emit(WordsSuccessGetWordSimilarToState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordSimilarToState(error.toString()));
    });
  }

  AlsoModel? alsoModel;
  void getWordAlsoData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$ALSO',
    ).then((value) {
      alsoModel = AlsoModel.fromJson(value.data);
      emit(WordsSuccessGetWordAlsoState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordAlsoState(error.toString()));
    });
  }

  EntailsModel? entailsModel;
  void getWordEntailsData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$ENTAILS',
    ).then((value) {
      entailsModel = EntailsModel.fromJson(value.data);
      emit(WordsSuccessGetWordEntailsState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordEntailsState(error.toString()));
    });
  }

  MemberOfModel? memberOfModel;
  void getWordMemberOfData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$MEMBEROF',
    ).then((value) {
      memberOfModel = MemberOfModel.fromJson(value.data);
      emit(WordsSuccessGetWordMemberOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordMemberOfState(error.toString()));
    });
  }

  HasMembersModel? hasMembersModel;
  void getWordHasMembersData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$HASMEMBERS',
    ).then((value) {
      hasMembersModel = HasMembersModel.fromJson(value.data);
      emit(WordsSuccessGetWordHasMembersState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordHasMembersState(error.toString()));
    });
  }

  SubstanceOfModel? substanceOfModel;
  void getWordSubstanceOfData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$SUBSTANCESOF',
    ).then((value) {
      substanceOfModel = SubstanceOfModel.fromJson(value.data);
      emit(WordsSuccessGetWordSubstanceOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordSubstanceOfState(error.toString()));
    });
  }

  HasSubstancesModel? hasSubstancesModel;
  void getWordHasSubstancesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$HASSUBSTANCES',
    ).then((value) {
      hasSubstancesModel = HasSubstancesModel.fromJson(value.data);
      emit(WordsSuccessGetWordHasSubstancesState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordHasSubstancesState(error.toString()));
    });
  }

  InCategoryModel? inCategoryModel;
  void getWordInCategoryData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$INCATEGORY',
    ).then((value) {
      inCategoryModel = InCategoryModel.fromJson(value.data);
      emit(WordsSuccessGetWordInCategoryState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordInCategoryState(error.toString()));
    });
  }

  HasCategoriesModel? hasCategoriesModel;
  void getWordHasCategoriesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$HASCATEGORIES',
    ).then((value) {
      hasCategoriesModel = HasCategoriesModel.fromJson(value.data);
      emit(WordsSuccessGetWordHasCategoriesState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordHasCategoriesState(error.toString()));
    });
  }

  UsageOfModel? usageOfModel;
  void getWordUsageOfData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$USAGEOF',
    ).then((value) {
      usageOfModel = UsageOfModel.fromJson(value.data);
      emit(WordsSuccessGetWordUsageOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordUsageOfState(error.toString()));
    });
  }

  HasUsagesModel? hasUsagesModel;
  void getWordHasUsagesData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$HASUSAGE',
    ).then((value) {
      hasUsagesModel = HasUsagesModel.fromJson(value.data);
      emit(WordsSuccessGetWordHasUsagesState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordHasUsagesState(error.toString()));
    });
  }

  InRegionModel? inRegionModel;
  void getWordInRegionData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$INREGION',
    ).then((value) {
      inRegionModel = InRegionModel.fromJson(value.data);
      emit(WordsSuccessGetWordMemberOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordMemberOfState(error.toString()));
    });
  }

  RegionOfModel? regionOfModel;
  void getWordRegionOfData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$REGIONOF',
    ).then((value) {
      regionOfModel = RegionOfModel.fromJson(value.data);
      emit(WordsSuccessGetWordRegionOfState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordRegionOfState(error.toString()));
    });
  }

  PertainsModel? pertainsModel;
  void getWordPertainsToData({
    required String word,
  }) {
    emit(WordsLoadingGetWordDataState());

    DioHelper.getData(
      url: '$word/$PERTAINSTO',
    ).then((value) {
      pertainsModel = PertainsModel.fromJson(value.data);
      emit(WordsSuccessGetWordPertainsState());
    }).catchError((error) {
      print(error);

      emit(WordsErrorGetWordPertainsState(error.toString()));
    });
  }
}
