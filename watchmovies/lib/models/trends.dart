import 'package:flutter/material.dart';

class Trending {
  final String title;
  final String img;
  final String releaseDate;
  final String rank;
  final String genre;
  final String description;
  final int availTickets;
  final Color colors;

  Trending(
      {this.title,
      this.img,
      this.releaseDate,
      this.rank,
      this.genre,
      this.availTickets,
      this.colors,
      this.description});
}

List trending = [
  Trending(
      img: 'assets/images/blood.jpeg',
      title: 'Van Diesel: Bloodshot',
      releaseDate: 'January, 14 2019',
      rank: '1',
      genre: 'Action',
      description:
          'Bloodshot is a 2020 American superhero film based on the Valiant Comics character of the same name. It is intended to be the first installment in a series of films set within a Valiant Comics shared cinematic universe.[3] Directed by David S. F. Wilson (in his feature directorial debut) from a screenplay by Jeff Wadlow and Eric Heisserer and a story by Wadlow,[4] the film stars Vin Diesel, Eiza González, Sam Heughan, Toby Kebbell, and Guy Pearce. It follows a Marine who was killed in action, only to be brought back to life with superpowers by an organization that wants to use him as a weapon.'),
  Trending(
      img: 'assets/images/alpha.jpg',
      title: 'Alpha Code',
      releaseDate: 'January, 14 2019',
      genre: 'Action',
      rank: '2',
      description:
          'Johana, a woman with no past, is hiding from a UN Agent Bowie, a head of secret space program. On her run she meets Martin and with help of Bowies ex-colleague Lance they both help Martin to find his half alien daughter.'),
  Trending(
      img: 'assets/images/kings.jpg',
      title: 'The Kings Man',
      releaseDate: 'January, 14 2019',
      genre: 'Action',
      rank: '14',
      description:
          'When a young car thief stumbles on the invention of the century (and the various government agencies that want to kill him), he and a sassy checkout clerk named Kate have the adventure of a lifetime.'),
  Trending(
      img: 'assets/images/wonder.jpg',
      title: 'AxCellerator',
      releaseDate: 'January, 14 2019',
      genre: 'Sci-Fi',
      rank: '7',
      description:
          'When a young car thief stumbles on the invention of the century (and the various government agencies that want to kill him), he and a sassy checkout clerk named Kate have the adventure of a lifetime.'),
  Trending(
      img: 'assets/images/notime.jpg',
      title: 'No Time To Die',
      releaseDate: 'January, 14 2019',
      genre: 'Action',
      rank: '12',
      description:
          'Premise. Five years after the capture of Ernst Stavro Blofeld, James Bond has left active service. He is approached by his friend and CIA officer Felix Leiter, who enlists his help in the search for Valdo Obruchev, a missing scientist.'),
  Trending(
      img: 'assets/images/oldguard.jpg',
      title: 'The Old Guard',
      releaseDate: 'January, 14 2019',
      genre: 'Action',
      rank: '17',
      description:
          'The Old Guard,” which debuted July 10 on Netflix, is based on the Image Comics series of the same name from veteran writer Greg Rucka and Argentine artist Leandro Fernández. Its the tale of a woman-led team of immortal warriors, centuries old, who have fought in every type of battle time has ever seen.')
];
