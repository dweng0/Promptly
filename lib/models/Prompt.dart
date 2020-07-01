import 'package:flutter_app/models/ScriptChunk.dart';

/// Holds prompt meta data about where the user is in the text file
class Prompt {

  /// The name given for the file
  String name;

  /// The current chunk position the user is in
  int chunkPosition = 0;

  /// The strings split down
  List<ScriptChunk> chunks;

 /// The date the prompt model was created
  String creationDate;

  /// This should be used to record the amount of time the user has spent with this prompt
  int timeInSession;

  ///Create a new prompt given an name and script chunk
  static Prompt of(String name, ScriptChunk chunk) {
    Prompt prompt = new Prompt();
    prompt.chunks = new List<ScriptChunk>();
    prompt.chunks.add(chunk);
    prompt.name = name;
    prompt.creationDate = DateTime.now().toIso8601String();
    prompt.timeInSession = 0;
    return prompt;
  }
}