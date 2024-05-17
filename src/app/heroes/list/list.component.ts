import { Component } from '@angular/core';

@Component({
  selector: 'app-heroes-list',
  templateUrl: './list.component.html',
  styleUrl: './list.component.css'
})
export class ListComponent {

  public heroeDelete?: string;

  public heroes: string[] = [
    'Spiderman', 'Ironman', 'Hulk', 'Thor'
  ];

  deleteLastHero(): void {
    this.heroeDelete = this.heroes.pop();
  }
}
