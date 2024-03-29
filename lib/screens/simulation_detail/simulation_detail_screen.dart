import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/data/models/simulation_model.dart';
import 'package:loan_simulator/screens/simulation_detail/simulation_detail_controller.dart';
import 'package:loan_simulator/utils/thousands_formatter.dart';
import 'package:loan_simulator/widgets/description_row.dart';
import 'package:loan_simulator/widgets/lc_button.dart';
import 'package:loan_simulator/widgets/lc_dropdown_button.dart';
import 'package:loan_simulator/widgets/lc_text_field.dart';

class SimulationDetailScreen extends HookConsumerWidget {
  SimulationDetailScreen({
    super.key,
    required this.userId,
  });

  final String userId;
  final _formKey = GlobalKey<FormState>();

  final double _cellWidth = 130;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(SimulationDetailController.provider.notifier).onScreenLoaded(
              userId: userId,
            );
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loan Simulation',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildUserCard(),
              const SizedBox(height: 8),
              _buildLoanFormContainer(),
              const SizedBox(height: 8),
              _buildLoanTable(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoanFormContainer() {
    return HookConsumer(
      builder: (context, ref, child) {
        final isFormExpanded = useState(true);
        final expandController = useAnimationController(
          duration: const Duration(milliseconds: 300),
        );
        final animation = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: expandController,
            curve: Curves.easeInOut,
          ),
        );

        ref.listen(
          SimulationDetailController.provider.select((value) => (
                simulationLoading: value.simulationLoading,
                simulationResult: value.simulationResult,
              )),
          (previous, next) {
            if (!next.simulationLoading && next.simulationResult is AsyncData) {
              isFormExpanded.value = false;
            }
          },
        );

        useEffect(() {
          if (isFormExpanded.value) {
            expandController.forward();
          } else {
            expandController.reverse();
          }
          return null;
        }, [isFormExpanded.value]);

        return _buildContainer(
          innerPadding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Material(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    isFormExpanded.value = !isFormExpanded.value;
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Loan Form',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        AnimatedRotation(
                          turns: isFormExpanded.value ? 0 : 0.5,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 300),
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizeTransition(
                axisAlignment: -1,
                sizeFactor: animation,
                axis: Axis.vertical,
                child: _buildCalculationForm(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCalculationForm() {
    return HookConsumer(
      builder: (context, ref, child) {
        final amountFieldController = useTextEditingController(text: '');
        final tenorFieldController = useTextEditingController(text: '');
        final rateFieldController = useTextEditingController(text: '');
        final calculationTypeSwitch = useState(1);
        final rateTypeSwitch = useState(1);

        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LcDropdownButton<int>(
                  label: 'Calculation Type',
                  value: calculationTypeSwitch.value,
                  onChanged: (int? value) {
                    calculationTypeSwitch.value = value ?? 1;
                  },
                  items: [1, 2].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value == 1 ? 'plafond' : 'angsuran'),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 12),
                LcTextField(
                  controller: amountFieldController,
                  label: 'Amount',
                  inputType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    ThousandsFormatter(),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Amount required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                LcTextField(
                  controller: tenorFieldController,
                  label: 'Tenor (months)',
                  inputType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tenor required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                LcTextField(
                  controller: rateFieldController,
                  label: 'Rate (per year)',
                  inputType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^\d+(\,|\.)?\d{0,4}'),
                    ),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Rate required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                LcDropdownButton<int>(
                  label: 'Rate Type',
                  value: rateTypeSwitch.value,
                  onChanged: (int? value) {
                    rateTypeSwitch.value = value ?? 1;
                  },
                  items: [1, 2].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value == 1 ? 'flat' : 'annuity'),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 12),
                LcButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ref
                          .read(SimulationDetailController.provider.notifier)
                          .onFetchSimulation(
                            calcType: calculationTypeSwitch.value.toString(),
                            amount: amountFieldController.text,
                            tenor: tenorFieldController.text,
                            rate: rateFieldController.text.replaceAll('.', ','),
                            rateType: rateTypeSwitch.value.toString(),
                          );
                    }
                  },
                  isLoading: ref.watch(
                    SimulationDetailController.provider
                        .select((value) => value.simulationLoading),
                  ),
                  child: const Text('SIMULATE LOAN'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildUserCard() {
    return Consumer(
      builder: (context, ref, child) {
        final userDetail = ref.watch(
          SimulationDetailController.provider
              .select((value) => value.userDetail),
        );

        return userDetail.when(
          data: (userData) {
            final user = userData.data;

            return _buildContainer(
              child: Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: user?.avatar ?? '',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(72),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${user?.firstName} ${user?.lastName}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text('${user?.email}'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoanTable() {
    return HookConsumer(
      builder: (context, ref, child) {
        final simulationResult = ref.watch(
          SimulationDetailController.provider
              .select((value) => value.simulationResult),
        );

        return simulationResult.when(
          data: (simulation) {
            return _buildContainer(
              innerPadding: const EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Material(
                    color: Colors.black,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Calculation Result',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 12,
                          children: [
                            DescriptionRow(
                              title: 'Plafond',
                              description: '${simulation.plafond}',
                            ),
                            DescriptionRow(
                              title: 'Angsuran Pokok',
                              description: '${simulation.angsuranPokok}',
                            ),
                            DescriptionRow(
                              title: 'Angsuran Bunga',
                              description: '${simulation.angsuranBunga}',
                            ),
                            DescriptionRow(
                              title: 'Total Angsuran',
                              description: '${simulation.totalAngsuran}',
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildTable(simulation.tabelAngsuran),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildTable(List<SimulationModelTabelAngsuran> tabelAngsuran) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildTableCell(
              content: 'Bulan',
              width: 50,
              color: Colors.black,
              textColor: Colors.white,
              textAlign: TextAlign.center,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            ),
            ...tabelAngsuran.mapIndexed(
              (index, loan) {
                final isEven = index % 2 == 0;
                return _buildTableCell(
                  content: '${loan.bulanKe}',
                  width: 50,
                  textAlign: TextAlign.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                  color: isEven ? Colors.black12 : Colors.white,
                );
              },
            ).toList(),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildTableCell(
                      content: 'Sisa',
                      color: Colors.black,
                      textColor: Colors.white,
                      width: _cellWidth,
                    ),
                    _buildTableCell(
                      content: 'Pokok',
                      color: Colors.black,
                      textColor: Colors.white,
                      width: _cellWidth,
                    ),
                    _buildTableCell(
                      content: 'Bunga',
                      color: Colors.black,
                      textColor: Colors.white,
                      width: _cellWidth,
                    ),
                    _buildTableCell(
                      content: 'Total',
                      color: Colors.black,
                      textColor: Colors.white,
                      width: _cellWidth,
                    ),
                  ],
                ),
                ...tabelAngsuran.mapIndexed(
                  (index, loan) {
                    final isEven = index % 2 == 0;
                    return Row(
                      children: [
                        _buildTableCell(
                          content: '${loan.sisaPinjaman}',
                          width: _cellWidth,
                          color: isEven ? Colors.black12 : Colors.white,
                        ),
                        _buildTableCell(
                          content: '${loan.angsuranPokok}',
                          width: _cellWidth,
                          color: isEven ? Colors.black12 : Colors.white,
                        ),
                        _buildTableCell(
                          content: '${loan.angsuranBunga}',
                          width: _cellWidth,
                          color: isEven ? Colors.black12 : Colors.white,
                        ),
                        _buildTableCell(
                          content: '${loan.totalAngsuran}',
                          width: _cellWidth,
                          color: isEven ? Colors.black12 : Colors.white,
                        ),
                      ],
                    );
                  },
                ).toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTableCell({
    required String content,
    double? width,
    double maxWidth = 300,
    Color color = Colors.white,
    Color textColor = Colors.black,
    TextAlign? textAlign,
    EdgeInsetsGeometry? padding =
        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
  }) {
    return Container(
      padding: padding,
      constraints: BoxConstraints(maxWidth: maxWidth),
      width: width,
      color: color,
      child: Text(
        content,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget _buildContainer({
    required Widget child,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    ),
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Container(
        padding: innerPadding,
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(
            color: Colors.black38,
            width: 1,
          ),
        ),
        child: child,
      ),
    );
  }
}
