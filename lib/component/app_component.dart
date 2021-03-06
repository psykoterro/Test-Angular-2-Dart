import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:angular2_tour_of_heroes/component/champions_component.dart';
import 'package:angular2_tour_of_heroes/service/champion_service.dart';
import 'package:angular2_tour_of_heroes/component/dashboard_component.dart';
import 'package:angular2_tour_of_heroes/component/champion_detail_component.dart';

@Component(
    selector: 'my-app',
    template: '''
      <h1>{{title}}</h1>
      <nav>
        <a [routerLink]="['Dashboard']">Tableau de Bord</a>
        <a [routerLink]="['Heroes']">Champion</a>
      </nav>
      <router-outlet></router-outlet>''',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService, ROUTER_PROVIDERS])
@RouteConfig(const [
  const Route(
      path: '/dashboard',
      name: 'Dashboard',
      component: DashboardComponent,
      useAsDefault: true),
  const Route(
      path: '/detail/:id', name: 'HeroDetail', component: HeroDetailComponent),
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent)
])
class AppComponent {
  String title = 'League of Legends - Champions';
}
