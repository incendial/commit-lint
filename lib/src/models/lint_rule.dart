import 'package:commit_lint/src/models/lint_issue.dart';
import 'package:conventional_commit/conventional_commit.dart';
import 'package:meta/meta.dart';

/// An interface to communicate with a rules
///
/// All rules must implement from this interface.
abstract class LintRule {
  /// The id of the rule.
  final String id;

  /// Initialize a newly created [LintRule].
  const LintRule({required this.id});

  /// Returns a [LintIssue] detected while check the passed commit [content]
  @protected
  LintIssue check(String? content);

  LintIssue checkCommit(ConventionalCommit content);
}
