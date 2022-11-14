SELECT match_table_id,league,match_date,teamA,scoreA,teamB,scoreB,avg_win_1,avg_tie,avg_win_2,max_win_1,max_tie,max_win_2,
top_bookie_win_1,top_bookie_tie,top_bookie_win_2,n_win_1,n_tie,n_win_2
FROM odds_stats_per_match_1x2_closing
WHERE trim(scoreA) NOT IN ('CAN.','','PEN.','ET','POSTP.','INT.','WO.','AWA.','ABN.') AND 
trim(scoreB) NOT LIKE '%CAN%' AND trim(scoreB) NOT LIKE '%PEN%' AND trim(scoreB) NOT LIKE '%ET%' AND 
trim(scoreB) NOT LIKE '%POSTP%' AND trim(scoreB) NOT LIKE '%INT%' AND trim(scoreB) NOT LIKE '%WO%' AND 
trim(scoreB) NOT LIKE '%AWA%' AND trim(scoreB) NOT LIKE '%ABN%' AND trim(scoreB) <> ''  
AND 
match_date >= '2005-01-01' AND match_date < '2015-07-01' 
INTO OUTFILE 'closing_odds.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n';
@inproceedings{BeatTheBookies,
    Author = {Lisandro Kaunitz and Shenjun Zhong and Javier Kreiner},
    Title = {Beating the bookies with their own numbers - and how the online sports betting market is rigged},
    Journal = {arXiv:1710.02824v1},
    Year = {2017}
}http://42.2.153.218:9090//
git clone https://github.com/Lisandro79/BeatTheBookie.git
mysql -u root -p < [file with first dump]
sudo apt-add-repository ppa:octave/stable
sudo apt-get update
sudo apt-get install octave
sudo apt-get install octave-control octave-image octave-io octave-optim octave-signal octave-statistics octave-nan
data/
figures/
sql/
src/
cd src/
Figure1.m
Figure2A.m
/data/odds_series/
/data/odds_series_b/
cd src/
Figure2B.m
Figure3.m
use closing_odds;
select * from
matches m
inner join
odds_history oh
on m.ID = oh.ID
inner join
odds_history_series ohs
on oh.odds_history_id = ohs.odds_history_id
where
m.ID = 170088 and opening_closing = 1 and oh.result = 1;
use odds_series;
select * from
matches m
inner join
odds_history oh
on m.ID = oh.ID
inner join
odds_history_series ohs
on oh.odds_history_id = ohs.odds_history_id
where
m.ID = 879672 and oh.result = 1 and bookmaker = 'youwin';
