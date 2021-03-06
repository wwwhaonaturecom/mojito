alter table asset_text_unit add column plural_form_other longtext;
alter table asset_text_unit add column plural_form_id bigint;

create table plural_form (id bigint not null auto_increment, name varchar(5) not null, primary key (id));
create table plural_form_for_locale (id bigint not null auto_increment, locale_id bigint not null, plural_form_id bigint not null, primary key (id));

alter table repository_locale_statistic add column diff_to_source_plural_count bigint;
alter table repository_statistic add column plural_text_unit_count bigint;
alter table repository_statistic add column plural_text_unit_word_count bigint;
alter table tm_text_unit add column plural_form_other longtext;
alter table tm_text_unit add column plural_form_id bigint;
alter table plural_form add constraint UK__PLURAL_FORM__NAME unique (name);
alter table plural_form_for_locale add constraint UK__PLURAL_FORM__PLURAL_FORM_ID__LOCALE_ID unique (plural_form_id, locale_id);
create index I__TM_TEXT_UNIT__PLURAL_FORM_OTHER on tm_text_unit (plural_form_other(25));
alter table asset_text_unit add constraint FK__ASSET_TEXT_UNIT__PLURAL_FORM__ID foreign key (plural_form_id) references plural_form (id);
alter table plural_form_for_locale add constraint FK__PLURAL_FORM_FOR_LOCALE__LOCALE__ID foreign key (locale_id) references locale (id);
alter table plural_form_for_locale add constraint FK__PLURAL_FORM_FOR_LOCALE__PLURAL_FORM__ID foreign key (plural_form_id) references plural_form (id);
alter table tm_text_unit add constraint FK__TM_TEXT_UNIT__PLURAL_FORM__ID foreign key (plural_form_id) references plural_form (id);

insert into plural_form (id, name) values (1, 'one');
insert into plural_form (id, name) values (2, 'two');
insert into plural_form (id, name) values (3, 'few');
insert into plural_form (id, name) values (4, 'many');
insert into plural_form (id, name) values (5, 'other'); 
insert into plural_form (id, name) values (6, 'zero');

insert into plural_form_for_locale (locale_id, plural_form_id) values (1, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (9, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (17, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (21, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (25, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (29, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (33, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (41, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (49, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (57, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (61, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (69, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (93, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (101, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (109, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (117, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (125, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (133, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (141, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (157, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (161, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (165, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (169, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (173, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (177, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (181, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (185, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (189, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (193, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (197, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (201, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (205, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (209, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (213, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (217, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (221, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (225, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (237, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (241, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (245, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (249, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (253, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (261, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (265, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (273, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (277, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (281, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (285, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (297, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (305, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (313, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (317, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (321, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (325, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (329, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (333, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (337, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (341, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (345, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (349, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (353, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (357, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (361, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (365, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (369, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (381, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (385, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (389, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (393, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (397, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (401, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (405, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (409, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (413, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (417, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (421, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (425, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (429, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (433, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (441, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (445, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (453, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (461, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (465, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (469, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (473, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (477, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (481, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (485, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (489, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (493, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (497, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (505, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (509, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (521, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (525, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (529, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (541, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (545, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (549, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (557, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (561, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (565, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (577, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (585, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (593, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (601, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (609, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (617, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (633, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (645, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (657, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (669, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (681, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (685, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (689, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (693, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (701, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (709, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (717, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (721, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (725, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (729, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (737, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (741, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (753, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (757, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (761, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (769, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (793, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (161, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (165, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (169, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (173, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (177, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (181, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (185, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (189, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (193, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (197, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (201, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (205, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (209, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (213, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (217, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (221, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (253, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (477, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (645, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (657, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (669, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (685, 2);
insert into plural_form_for_locale (locale_id, plural_form_id) values (1, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (117, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (125, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (161, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (165, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (169, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (173, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (177, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (181, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (185, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (189, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (193, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (197, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (201, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (205, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (209, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (213, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (217, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (221, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (241, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (249, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (253, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (485, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (489, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (545, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (577, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (633, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (681, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (685, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (693, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (701, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (753, 3);
insert into plural_form_for_locale (locale_id, plural_form_id) values (1, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (117, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (125, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (161, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (165, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (169, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (173, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (177, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (181, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (185, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (189, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (193, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (197, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (201, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (205, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (209, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (213, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (217, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (221, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (249, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (253, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (477, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (545, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (577, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (681, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (753, 4);
insert into plural_form_for_locale (locale_id, plural_form_id) values (1, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (9, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (17, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (21, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (25, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (29, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (33, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (41, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (49, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (57, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (61, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (69, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (77, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (85, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (93, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (101, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (109, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (117, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (125, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (133, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (141, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (149, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (153, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (157, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (161, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (165, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (169, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (173, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (177, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (181, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (185, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (189, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (193, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (197, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (201, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (205, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (209, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (213, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (217, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (221, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (225, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (237, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (241, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (245, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (249, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (253, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (261, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (265, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (273, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (277, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (281, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (285, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (297, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (305, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (313, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (317, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (321, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (325, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (329, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (333, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (337, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (341, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (345, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (349, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (353, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (357, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (361, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (365, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (369, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (381, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (385, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (389, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (393, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (397, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (401, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (405, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (409, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (413, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (417, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (421, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (425, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (429, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (433, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (441, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (445, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (453, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (461, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (465, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (469, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (473, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (477, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (481, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (485, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (489, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (493, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (497, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (501, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (505, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (509, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (521, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (525, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (529, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (537, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (541, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (545, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (549, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (553, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (557, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (561, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (565, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (569, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (573, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (577, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (585, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (593, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (597, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (601, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (609, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (617, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (621, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (625, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (629, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (633, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (641, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (645, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (657, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (669, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (681, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (685, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (689, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (693, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (701, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (709, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (717, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (721, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (725, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (729, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (733, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (737, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (741, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (749, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (753, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (757, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (761, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (765, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (769, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (777, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (781, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (785, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (793, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (161, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (165, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (169, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (173, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (177, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (181, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (185, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (189, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (193, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (197, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (201, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (205, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (209, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (213, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (217, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (221, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (253, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (549, 6);
insert into plural_form_for_locale (locale_id, plural_form_id) values (801, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (801, 5);
insert into plural_form_for_locale (locale_id, plural_form_id) values (797, 1);
insert into plural_form_for_locale (locale_id, plural_form_id) values (797, 5);