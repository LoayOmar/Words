import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:words/shared/cubit/cubit.dart';
import 'package:words/shared/cubit/state.dart';
import 'package:words/shared/styles/colors.dart';

class RelatesWordsScreen extends StatelessWidget {
  const RelatesWordsScreen({Key? key}) : super(key: key);

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
              minWidth:
              MediaQuery.of(context).size.width *
                  0.44,
              activeBgColor: const [Colors.white],
              inactiveBgColor: defaultColor,
              initialLabelIndex: 1,
              labels: const ['Words', 'Related Words'],
              radiusStyle: true,
              customTextStyles: const [
                TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: defaultColor,
                ),
              ],
              onToggle: (index) {
                if (index == 0) {
                  WordsCubit.get(context).changeToggleIndex(0);
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
              'Is a Type Of :-',
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
                '${index + 1} - ${cubit.isATypeOfModel!.typeOf[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.isATypeOfModel!.typeOf.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Has Types :-',
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
                '${index + 1} - ${cubit.hasTypesModel!.hasTypes[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.hasTypesModel!.hasTypes.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Part Of :-',
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
                '${index + 1} - ${cubit.partOfModel!.partOf[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.partOfModel!.partOf.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Has Parts :-',
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
                '${index + 1} - ${cubit.hasPartsModel!.hasParts[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.hasPartsModel!.hasParts.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Is an Instance Of :-',
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
                '${index + 1} - ${cubit.isAnInstanceOfModel!.instanceOf[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.isAnInstanceOfModel!.instanceOf.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Has Instances :-',
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
                '${index + 1} - ${cubit.hasInstancesModel!.hasInstances[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.hasInstancesModel!.hasInstances.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Similar To :-',
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
                '${index + 1} - ${cubit.similarToModel!.similarTo[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.similarToModel!.similarTo.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Also :-',
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
                '${index + 1} - ${cubit.alsoModel!.also[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.alsoModel!.also.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Entails :-',
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
                '${index + 1} - ${cubit.entailsModel!.entails[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.entailsModel!.entails.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Members Of :-',
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
                '${index + 1} - ${cubit.memberOfModel!.memberOf[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.memberOfModel!.memberOf.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Has Members :-',
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
                '${index + 1} - ${cubit.hasMembersModel!.hasMembers[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.hasMembersModel!.hasMembers.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Substance Of :-',
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
                '${index + 1} - ${cubit.substanceOfModel!.substanceOf[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.substanceOfModel!.substanceOf.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Has Substances :-',
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
                '${index + 1} - ${cubit.hasSubstancesModel!.hasSubstances[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.hasInstancesModel!.hasInstances.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'In Category :-',
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
                '${index + 1} - ${cubit.inCategoryModel!.inCategory[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.inCategoryModel!.inCategory.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Has Categories :-',
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
                '${index + 1} - ${cubit.hasCategoriesModel!.hasCategories[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.hasCategoriesModel!.hasCategories.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Usage Of :-',
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
                '${index + 1} - ${cubit.usageOfModel!.usageOf[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.usageOfModel!.usageOf.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Has Usages :-',
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
                '${index + 1} - ${cubit.hasUsagesModel!.hasUsages[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.hasUsagesModel!.hasUsages.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'In Region :-',
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
                '${index + 1} - ${cubit.inRegionModel!.inRegion[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.inRegionModel!.inRegion.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Region Of :-',
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
                '${index + 1} - ${cubit.regionOfModel!.regionOf[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.regionOfModel!.regionOf.length,
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pertains To :-',
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
                '${index + 1} - ${cubit.pertainsModel!.pertainsTo[index]}.',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Jannah',
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 0,),
            itemCount: cubit.pertainsModel!.pertainsTo.length,
          ),
        ],
      );
      },
    );
  }
}
