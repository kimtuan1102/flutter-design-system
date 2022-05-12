import 'package:flutter/material.dart';
import 'package:fci_ui/fci_ui.dart';

/**
 * Created by Trinh Kim Tuan.
 * Date:  5/12/2022
 * Time: 1:19 PM
 */
class ExampleView extends StatefulWidget {

  const ExampleView({Key? key}) : super(key: key);

  @override
  State<ExampleView> createState() => _ExampleViewState();
}

class _ExampleViewState extends State<ExampleView> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xFFE5E5E5),
      child: ListView(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          FCIText.headingTwo(
            'Typography',
            align: TextAlign.center,
          ),
          ...textWidgets,
          FCIText.headingTwo(
            'Button',
            align: TextAlign.center,
          ),
          ...buttonWidgets
        ],
      ),
    ));
  }
}

List<Widget> get textWidgets => [
      FCIText.headingOne('Heading One'),
      verticalSpaceMedium,
      FCIText.headingTwo('Heading Two'),
      verticalSpaceMedium,
      FCIText.headingThree('Heading Three'),
      verticalSpaceMedium,
      FCIText.headingFour('Heading Four'),
      verticalSpaceMedium,
      FCIText.headingFive('Heading Five'),
      verticalSpaceMedium,
      FCIText.textDefault('Text Default'),
      verticalSpaceMedium,
      FCIText.textStrong('Text Strong'),
      verticalSpaceMedium,
      FCIText.textUnderline('Text Underline'),
      verticalSpaceMedium,
      FCIText.textDelete('Text Delete'),
      verticalSpaceMedium,
      FCIText.textItalic('Text Italic'),
      verticalSpaceMedium,
    ];

List<Widget> get buttonWidgets => [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.primary,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
            ],
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.normal,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
            ],
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.ghost,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
            ],
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.large,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.large,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.medium,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.medium,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                onTap: () {},
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: false,
                loading: true,
                buttonSize: ButtonSize.small,
              ),
              horizontalSpaceTiny,
              FCIButton(
                icon: Icons.settings_outlined,
                buttonType: ButtonType.text,
                title: 'Button',
                disabled: true,
                loading: false,
                buttonSize: ButtonSize.small,
              ),
            ],
          ),
        ],
      )
    ];
