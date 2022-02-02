import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:words/shared/cubit/cubit.dart';
import 'package:words/shared/cubit/state.dart';
import 'package:words/shared/styles/colors.dart';

class WordsScreen extends StatelessWidget {
  const WordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WordsCubit, WordsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = WordsCubit.get(context);
        return Column(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ToggleSwitch(
                totalSwitches: 2,
                cornerRadius: 30,
                minHeight: 40,
                minWidth: MediaQuery.of(context).size.width * 0.44,
                activeBgColor: const [Colors.white],
                inactiveBgColor: defaultColor,
                initialLabelIndex: 0,
                labels: const ['Words', 'Related Words'],
                radiusStyle: true,
                customTextStyles: const [
                  TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: defaultColor,
                  ),
                  TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ],
                onToggle: (index) {
                  if (index == 1) {
                    WordsCubit.get(context).changeToggleIndex(1);
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Word : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Jannah',
                    fontSize: 24,
                    color: defaultColor,
                  ),
                ),
                Text(
                  '${cubit.definitionsModel!.word}.',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Jannah',
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Definitions :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1} - ${cubit.definitionsModel!.definitions[index].definition}.   (${cubit.definitionsModel!.definitions[index].partOfSpeech})',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 0,),
              itemCount: cubit.definitionsModel!.definitions.length,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Examples :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1} - ${cubit.examplesModel!.examples[index]}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 0,),
              itemCount: cubit.examplesModel!.examples.length,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Synonyms :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1} - ${cubit.synonymsModel!.synonyms[index]}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 0,),
              itemCount: cubit.synonymsModel!.synonyms.length,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rhymes :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1} - ${cubit.rhymesModel!.rhymes!.all[index]}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 0,),
              itemCount: cubit.rhymesModel!.rhymes!.all.length,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Antonyms :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1} - ${cubit.antonymsModel!.antonyms[index]}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 0,),
              itemCount: cubit.antonymsModel!.antonyms.length,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pronunciation :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            if(cubit.pronunciationModel!.pronunciation!.all != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'all : ${cubit.pronunciationModel!.pronunciation!.all}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
            ),
              ),
            if(cubit.pronunciationModel!.pronunciation!.noun != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'noun : ${cubit.pronunciationModel!.pronunciation!.noun}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
            ),
              ),
            if(cubit.pronunciationModel!.pronunciation!.verb != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'verb : ${cubit.pronunciationModel!.pronunciation!.verb}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
            ),
              ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Syllables :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Count : ${cubit.syllablesModel!.syllables!.count}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1} - ${cubit.syllablesModel!.syllables!.list[index]}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 0,),
              itemCount: cubit.syllablesModel!.syllables!.list.length,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Frequency :-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jannah',
                  fontSize: 24,
                  color: defaultColor,
                ),
              ),
            ),
            if(cubit.frequencyModel!.frequency!.zipf != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'zipf : ${cubit.frequencyModel!.frequency!.zipf}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                ),
              ),
            if(cubit.frequencyModel!.frequency!.perMillion != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'perMillion : ${cubit.frequencyModel!.frequency!.perMillion}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                ),
              ),
            if(cubit.frequencyModel!.frequency!.diversity != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'diversity : ${cubit.frequencyModel!.frequency!.diversity}.',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Jannah',
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
