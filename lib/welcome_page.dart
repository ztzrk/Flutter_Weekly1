import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weekly1/color.dart';
import 'package:weekly1/custom_button.dart';
import 'package:weekly1/custom_text_field.dart';
import 'package:weekly1/fav_agent.dart';
import 'package:weekly1/favorite_agent_widget.dart';
import 'package:weekly1/list_data.dart';
import 'package:weekly1/playlist_widget.dart';
import 'package:weekly1/text_styles.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? _selectedAgent;
  FavoriteAgent favoriteAgent = FavoriteAgent(
      name: 'Aflah Alifu',
      agent: 'omen',
      email: 'aflahalifu@gmail.com',
      description: 'Can tele, good smoker, very flashy');

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      appBar: AppBar(
        leading: Icon(
          Icons.wifi,
          color: ColorConst.primary,
        ),
        backgroundColor: ColorConst.darkgrey,
        title: Text(
          'Spotipu',
          style: TextStyle(
            color: ColorConst.primary,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Text(
                  'Omen',
                  style: MyTextStyle.mediumText,
                ),
                const SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: const AssetImage('assets/images/omen.png'),
                  backgroundColor: ColorConst.grey,
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  FavoriteAgentWidget(favoriteAgent: favoriteAgent),
                  PlaylistWidget(
                    listAgent: listRecent,
                    title: 'Recently Played',
                  ),
                  PlaylistWidget(
                    listAgent: listDuelist,
                    title: 'Duelist for You',
                  ),
                  PlaylistWidget(
                    listAgent: listSentinel,
                    title: 'Sentinel Madrid Champion',
                  ),
                ],
              ),
              Text(
                'Set your Favorite Agent',
                style: MyTextStyle.largeText,
              ),
              const SizedBox(
                height: 16,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      labelText: 'Name',
                      hintText: 'What is your name?',
                      inputFormatter: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[a-zA-Z\s]+$')),
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      controller: _nameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                      hintText: 'What is your email?',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        bool isValidEmail =
                            RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value);
                        if (!isValidEmail) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DropdownButtonFormField<String>(
                      style: const TextStyle(color: Colors.white),
                      dropdownColor: ColorConst.darkgrey,
                      value: _selectedAgent,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedAgent = newValue;
                        });
                      },
                      items: listAgent.map((String element) {
                        return DropdownMenuItem<String>(
                          value: element,
                          child: Text(
                            element.substring(0, 1).toUpperCase() +
                                element.substring(1),
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Agent',
                        hintText: 'Select an agent',
                        labelStyle: TextStyle(color: ColorConst.lightgrey),
                        hintStyle: TextStyle(color: ColorConst.lightgrey),
                        floatingLabelStyle:
                            TextStyle(color: ColorConst.primary),
                        filled: true,
                        fillColor: ColorConst.darkgrey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select an agent';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      isTextArea: true,
                      labelText: 'Description',
                      hintText: 'What describes your favorite agent?',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a description';
                        }
                        return null;
                      },
                      controller: _descriptionController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          favoriteAgent.name = _nameController.text;
                          favoriteAgent.email = _emailController.text;
                          favoriteAgent.agent = _selectedAgent;
                          favoriteAgent.description =
                              _descriptionController.text;

                          _nameController.clear();
                          _emailController.clear();
                          _selectedAgent = null;
                          _descriptionController.clear();
                          setState(() {});
                          String message = 'Name: ${favoriteAgent.name}\n'
                              'Email: ${favoriteAgent.email}\n'
                              'Agent: ${favoriteAgent.agent}\n'
                              'Description: ${favoriteAgent.description}';

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: ColorConst.primary,
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Data set successfully!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    message,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              duration: const Duration(seconds: 5),
                            ),
                          );
                        }
                      },
                      child: const CustomButton(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
