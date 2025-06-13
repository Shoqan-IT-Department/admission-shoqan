import type { Schema, Struct } from '@strapi/strapi';

export interface SharedComponent extends Struct.ComponentSchema {
  collectionName: 'components_shared_components';
  info: {
    description: '';
    displayName: 'component';
  };
  attributes: {
    code: Schema.Attribute.Text;
    educat: Schema.Attribute.Text;
    graduate: Schema.Attribute.Text;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.Text;
  };
}

export interface SharedItem extends Struct.ComponentSchema {
  collectionName: 'components_shared_items';
  info: {
    displayName: 'item';
  };
  attributes: {
    description: Schema.Attribute.Text;
    title: Schema.Attribute.Text;
  };
}

export interface SharedMagistr extends Struct.ComponentSchema {
  collectionName: 'components_shared_magistrs';
  info: {
    displayName: 'magistr';
  };
  attributes: {
    description: Schema.Attribute.Text;
    title: Schema.Attribute.Text;
  };
}

export interface SharedTitle extends Struct.ComponentSchema {
  collectionName: 'components_shared_titles';
  info: {
    displayName: 'title';
  };
  attributes: {
    description: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'shared.component': SharedComponent;
      'shared.item': SharedItem;
      'shared.magistr': SharedMagistr;
      'shared.title': SharedTitle;
    }
  }
}
