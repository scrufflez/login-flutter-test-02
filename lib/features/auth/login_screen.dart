import 'package:flutter/material.dart';
import '../../core/theme/asgard_colors.dart';
import '../../core/theme/asgard_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _message;
  bool _isSuccess = false;

  void _handleLogin() {
    final password = _passwordController.text;
    setState(() {
      if (password == 'pa55w0rd') {
        _message = 'Login successful!';
        _isSuccess = true;
      } else {
        _message = 'Invalid credentials';
        _isSuccess = false;
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AsgardColors.background,
      body: Column(
        children: [
          const _TopNav(),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: _LoginCard(
                  emailController: _emailController,
                  passwordController: _passwordController,
                  onLogin: _handleLogin,
                  message: _message,
                  isSuccess: _isSuccess,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TopNav extends StatelessWidget {
  const _TopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: const BoxDecoration(
        color: AsgardColors.topBar,
        border: Border(
          bottom: BorderSide(color: Color(0xFF202426)),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Text('PANAGO', style: AsgardTextStyles.brand),
          const Spacer(),
          SizedBox(
            width: 180,
            height: 32,
            child: TextField(
              style: const TextStyle(color: AsgardColors.textPrimary, fontSize: 13),
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: const TextStyle(color: AsgardColors.textDisabled, fontSize: 13),
                filled: true,
                fillColor: AsgardColors.surface,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: AsgardColors.border),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: AsgardColors.border),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: AsgardColors.focusBlue),
                ),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AsgardColors.border),
              color: AsgardColors.surface,
            ),
            child: const Icon(Icons.menu, color: AsgardColors.textSecondary, size: 16),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: AsgardColors.primaryBlue,
              side: const BorderSide(color: AsgardColors.border),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
              padding: const EdgeInsets.symmetric(horizontal: 14),
              minimumSize: const Size(0, 32),
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.1,
              ),
            ),
            child: const Text('LOG IN'),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: AsgardColors.primaryBlue,
              onPrimary: const Color(0xFF071014),
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
              padding: const EdgeInsets.symmetric(horizontal: 14),
              minimumSize: const Size(0, 32),
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.1,
              ),
            ),
            child: const Text('SIGN UP'),
          ),
        ],
      ),
    );
  }
}

class _LoginCard extends StatelessWidget {
  const _LoginCard({
    Key? key,
    required this.emailController,
    required this.passwordController,
    required this.onLogin,
    required this.message,
    required this.isSuccess,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;
  final String? message;
  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AsgardColors.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AsgardColors.border),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text('PANAGO', style: AsgardTextStyles.brand),
          ),
          const SizedBox(height: 6),
          const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: AsgardColors.textMuted,
              ),
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'Email',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AsgardColors.textSecondary,
            ),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: AsgardColors.textPrimary, fontSize: 14),
            decoration: const InputDecoration(
              hintText: 'you@example.com',
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Password',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AsgardColors.textSecondary,
            ),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: passwordController,
            obscureText: true,
            style: const TextStyle(color: AsgardColors.textPrimary, fontSize: 14),
            decoration: const InputDecoration(
              hintText: '••••••••',
            ),
            onSubmitted: (_) => onLogin(),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onLogin,
            style: ElevatedButton.styleFrom(
              primary: AsgardColors.primaryBlue,
              onPrimary: const Color(0xFF071014),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              minimumSize: const Size(double.infinity, 48),
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.1,
              ),
            ),
            child: const Text('LOG IN'),
          ),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: isSuccess ? AsgardColors.success : AsgardColors.danger,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
