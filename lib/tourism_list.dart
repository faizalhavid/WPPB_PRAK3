import 'package:flutter/material.dart';
import 'package:praktikum_2/detail_screen.dart';
import 'package:praktikum_2/model/tourism_place.dart';
import 'package:praktikum_2/list_item.dart';
import 'package:provider/provider.dart';
import 'package:praktikum_2/done_tourism_provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      no: 1,
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 15:00',
      harga: "Rp.12000",
    ),
    TourismPlace(
      no: 2,
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.jpeg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 16:00',
      harga: "free",
    ),
    TourismPlace(
      no: 3,
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpeg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 19:00',
      harga: "free",
    ),
    TourismPlace(
      no: 4,
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/tugupahlawan.jpg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 15:00',
      harga: "free ",
    ),
    TourismPlace(
      no: 5,
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/suroboyo.jpg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 19:00',
      harga: "Rp.5000",
    ),
    TourismPlace(
      no: 6,
      name: 'Telaga Ngebel',
      location: 'Ponorogo',
      imageAsset: 'assets/images/ngebel.jpeg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 18:00',
      harga: "Rp.22000",
    ),
    TourismPlace(
      no: 7,
      name: 'Candi Borobudur',
      location: 'Magelang',
      imageAsset: 'assets/images/borobudur.jpg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 15:00',
      harga: "Rp.22000",
    ),
    TourismPlace(
      no: 8,
      name: 'Pantai Parangtritis',
      location: 'Jogjakarta',
      imageAsset: 'assets/images/parangtritis.jpeg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 17:00',
      harga: "Rp.10000",
    ),
    TourismPlace(
      no: 9,
      name: 'Lawang Sewu',
      location: 'Semarang',
      imageAsset: 'assets/images/lawangsewu.jpg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 16:00',
      harga: "Rp.12.000",
    ),
    TourismPlace(
      no: 10,
      name: 'Malioboro',
      location: 'Jogjakarta',
      imageAsset: 'assets/images/malioboro.jpg',
      detail:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio provident sequi aperiam doloremque quia voluptatum veritatis. Aliquid, autem. Quos harum eos sapiente totam, deserunt impedit dolor explicabo voluptates incidunt non in sint molestiae fugiat hic commodi corporis, voluptatibus eius. Veritatis eius dicta excepturi repudiandae nihil corrupti beatae molestiae eum dolorem corporis nam, alias neque ratione officiis provident laboriosam, suscipit dolor unde id ipsam optio temporibus voluptatibus saepe? Eveniet, nemo, voluptatem tenetur sit aspernatur reprehenderit voluptatum nobis repellat aut praesentium obcaecati!',
      time: '08:00 - 22:00',
      harga: "free",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget) {
            return ListItem(
              place: place,
              isDone: data.doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value) {
                data.complete(place, value!);
              },
            );
          }),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
