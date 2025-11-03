import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuickActionsGrid extends StatelessWidget {
  const QuickActionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const actions = [
      _QuickAction(
        icon: Icons.book,
        label: 'Bible',
        route: '/bible',
        color: Color(0xFF2D4A6B),
      ),
      _QuickAction(
        icon: Icons.emoji_people,
        label: 'Prayers',
        route: '/prayers',
        color: Color(0xFF4A9B9B),
      ),
      _QuickAction(
        icon: Icons.favorite,
        label: 'Rosary',
        route: '/rosary',
        color: Color(0xFFD4AF37),
      ),
      _QuickAction(
        icon: Icons.chat,
        label: 'Chat',
        route: '/chat',
        color: Color(0xFF6B8E23),
      ),
      _QuickAction(
        icon: Icons.music_note,
        label: 'Music',
        route: '/music',
        color: Color(0xFF9B4A6B),
      ),
      _QuickAction(
        icon: Icons.people,
        label: 'Community',
        route: '/community',
        color: Color(0xFF4A6B9B),
      ),
      _QuickAction(
        icon: Icons.person,
        label: 'Saints',
        route: '/saints',
        color: Color(0xFF6B4A9B),
      ),
      _QuickAction(
        icon: Icons.more_horiz,
        label: 'More',
        route: '/profile',
        color: Color(0xFF718096),
      ),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.9,
      ),
      itemCount: actions.length,
      itemBuilder: (context, index) {
        final action = actions[index];
        return _QuickActionItem(action: action);
      },
    );
  }
}

class _QuickAction {
  final IconData icon;
  final String label;
  final String route;
  final Color color;

  const _QuickAction({
    required this.icon,
    required this.label,
    required this.route,
    required this.color,
  });
}

class _QuickActionItem extends StatelessWidget {
  final _QuickAction action;

  const _QuickActionItem({required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(action.route);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: action.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              action.icon,
              color: action.color,
              size: 28,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            action.label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
