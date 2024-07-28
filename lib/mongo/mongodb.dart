import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:pawan_s_application2/mongo/constant.dart';

class MongoDatabase {
  static Db? _db;

  static Future<Db> connect() async {
    if (_db == null) {
      try {
        _db = await Db.create(MONGO_URL);
        await _db!.open(secure: true);
        print('Connected to MongoDB');
        inspect(_db);
      } catch (e) {
        print('Failed to connect to the database: $e');
        rethrow;
      }
    }
    return _db!;
  }

  static Future<void> close() async {
    if (_db != null) {
      await _db!.close();
      _db = null;
      print('Disconnected from MongoDB');
    }
  }

  static Future<void> createUserProfile(
      Map<String, dynamic> userProfile) async {
    try {
      var db = await connect();
      var collection = db.collection(COLLECTION_NAME);
      await collection.insertOne(userProfile);
      print('User profile created');
    } catch (e) {
      print('Failed to create user profile: $e');
    }
  }

  static Future<Map<String, dynamic>?> getUserProfileById(ObjectId id) async {
    try {
      var db = await connect();
      var collection = db.collection(COLLECTION_NAME);
      var userMap = await collection.findOne(where.id(id));
      if (userMap != null) {
        print('User profile retrieved');
        return userMap;
      }
      print('User profile not found');
      return null;
    } catch (e) {
      print('Failed to retrieve user profile: $e');
      return null;
    }
  }

  static Future<List<Map<String, dynamic>>> getAllUserProfiles() async {
    try {
      var db = await connect();
      var collection = db.collection(COLLECTION_NAME);
      var userProfiles = await collection.find().toList();
      print('All user profiles retrieved');
      return userProfiles;
    } catch (e) {
      print('Failed to retrieve user profiles: $e');
      return [];
    }
  }

  static Future<void> updateUserProfile(
      ObjectId id, Map<String, dynamic> updatedData) async {
    try {
      var db = await connect();
      var collection = db.collection(COLLECTION_NAME);
      await collection.updateOne(
          where.id(id),
          modify.set('phoneNumber', updatedData['phoneNumber'])
            ..set('password', updatedData['password'])
            ..set('firstName', updatedData['firstName'])
            ..set('lastName', updatedData['lastName'])
            ..set('dateOfBirth', updatedData['dateOfBirth'])
            ..set('gender', updatedData['gender'])
            ..set('currentlyIm', updatedData['currentlyIm'])
            ..set('interestedIn', updatedData['interestedIn'])
            ..set('lookingFor', updatedData['lookingFor'])
            ..set('sexualOrientation', updatedData['sexualOrientation'])
            ..set('interests', updatedData['interests'])
            ..set('photos', updatedData['photos'])
            ..set('bio', updatedData['bio']));
      print('User profile updated');
    } catch (e) {
      print('Failed to update user profile: $e');
    }
  }

  static Future<void> deleteUserProfile(ObjectId id) async {
    try {
      var db = await connect();
      var collection = db.collection(COLLECTION_NAME);
      await collection.deleteOne(where.id(id));
      print('User profile deleted');
    } catch (e) {
      print('Failed to delete user profile: $e');
    }
  }
}
