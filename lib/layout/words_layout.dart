import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/modules/related_words_screen.dart';
import 'package:words/modules/words_screen.dart';
import 'package:words/shared/components/components.dart';
import 'package:words/shared/cubit/cubit.dart';
import 'package:words/shared/cubit/state.dart';
import 'package:words/shared/styles/colors.dart';

class WordsLayOut extends StatelessWidget {
  TextEditingController wordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WordsCubit, WordsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = WordsCubit.get(context);
        var mediaQuery = MediaQuery.of(context).size;
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: ListView(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 20, right: 5),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: defaultTextFormField(
                        controller: wordController,
                        type: TextInputType.text,
                        label: 'Enter Word',
                        validate: (value) {},
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 85,
                      child: state is WordsLoadingGetWordDataState
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: defaultColor,
                            ))
                          : defaultButton(
                              function: () {
                                if (wordController.text.isNotEmpty) {
                                  wordController.text =
                                      wordController.text.toLowerCase();
                                  cubit.getWordDefinitionData(
                                      word: wordController.text);
                                  cubit.getWordSynonymsData(
                                      word: wordController.text);
                                  cubit.getWordExamplesData(
                                      word: wordController.text);
                                  cubit.getWordRhymesData(
                                      word: wordController.text);
                                  cubit.getWordAntonymsData(
                                      word: wordController.text);
                                  cubit.getWordPronunciationData(
                                      word: wordController.text);
                                  cubit.getWordSyllablesData(
                                      word: wordController.text);
                                  cubit.getWordFrequencyData(
                                      word: wordController.text);
                                  cubit.getWordIsATypeOfData(
                                      word: wordController.text);
                                  cubit.getWordHasTypesData(
                                      word: wordController.text);
                                  cubit.getWordPartOfData(
                                      word: wordController.text);
                                  cubit.getWordHasPartsData(
                                      word: wordController.text);
                                  cubit.getWordIsAnInstanceOfData(
                                      word: wordController.text);
                                  cubit.getWordHasInstancesData(
                                      word: wordController.text);
                                  cubit.getWordSimilarToData(
                                      word: wordController.text);
                                  cubit.getWordAlsoData(
                                      word: wordController.text);
                                  cubit.getWordEntailsData(
                                      word: wordController.text);
                                  cubit.getWordMemberOfData(
                                      word: wordController.text);
                                  cubit.getWordHasMembersData(
                                      word: wordController.text);
                                  cubit.getWordSubstanceOfData(
                                      word: wordController.text);
                                  cubit.getWordHasSubstancesData(
                                      word: wordController.text);
                                  cubit.getWordInCategoryData(
                                      word: wordController.text);
                                  cubit.getWordHasCategoriesData(
                                      word: wordController.text);
                                  cubit.getWordUsageOfData(
                                      word: wordController.text);
                                  cubit.getWordHasUsagesData(
                                      word: wordController.text);
                                  cubit.getWordInRegionData(
                                      word: wordController.text);
                                  cubit.getWordRegionOfData(
                                      word: wordController.text);
                                  cubit.getWordPertainsToData(
                                      word: wordController.text);
                                } else {
                                  showToast(
                                      text: 'Enter Word',
                                      state: ToastStates.ERROR);
                                }
                              },
                              text: 'Search',
                              context: context,
                              background: defaultColor,
                              textColor: Colors.white,
                              radius: 5,
                            ),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                if(cubit.definitionsModel != null)
                  WordsCubit.get(context).toggleIndex == 0 ? WordsScreen() : RelatesWordsScreen(),
              ],
            ),
          ),
        );
      },
    );
  }
}
