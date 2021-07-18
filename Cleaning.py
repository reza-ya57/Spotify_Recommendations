import numpy as np
import pandas as pd

# Vanessa
#####################################
# change the path 
df_tracks = pd.read_csv(r'./tracks.csv')
print(df_tracks.shape)
df_tracks.head(10)

df_tracks['artists'] = df_tracks['artists'].str.strip("['']")



df_tracks['id_artists'] = df_tracks['id_artists'].str.strip("['']")

# get first artists only and replace in df
featured_index = df_tracks[df_tracks['artists'].str.contains(',')].index
multiple_artists = df_tracks[df_tracks['artists'].str.contains(',')]
first_artists = multiple_artists['artists'].str.extract(r'((\w*\s)*\w*)\'\,')[0]
df_tracks.loc[df_tracks['artists'].str.contains(','),'artists'] = first_artists

# do the same for artists id 
multiple_id = df_tracks[df_tracks['id_artists'].str.contains(',')]
first_id = df_tracks['id_artists'].str.extract(r'(\w*)\'\,')[0]
df_tracks.loc[df_tracks['id_artists'].str.contains(','),'id_artists'] = first_id

# Reza
###################################
df_tracks.dropna(inplace=True)
df_tracks['release_date'] = df_tracks['release_date'].str.extract(r'(\d{4})')[0]

df_tracks['release_date'] = df_tracks['release_date'].astype(int)

decade = []
for year in df_tracks['release_date']:
    if (year >= 1940) & (year< 1950):
        decade = "1940's"
    elif (year >= 1950) & (year < 1960):
        decade = "1950's"
    elif (year >= 1960) & (year < 1970):
        decade = "1960's"
    elif (year >= 1970) & (year < 1980):
        decade = "1970's"
    elif (year >= 1980) & (year < 1990):
        decade = "1980's"
    elif (year >= 1990) & (year < 2000):
        decade = "1990's"
    elif (year >= 2000) & (year < 2010):
        decade = "2000's"
    elif (year >= 2010) & (year < 2020):
        decade = "2010's"
    else: 
        decade = "2020's"

df_tracks['decades'] = decade

# Vish
###################################
file_path = r'./artists.csv'
df_artists = pd.read_csv(file_path)

df_artists['genres'] = df_artists['genres'].str.strip('[]')

nan_value = np.nan
df_artists.replace('', nan_value, inplace=True)
df_artists.dropna(subset=['genres'], inplace=True)
df_artists.reset_index(drop=True, inplace=True)

# Matt
###################################
df_tracks.drop(df_tracks[(df_tracks['time_signature'] == 0) | (df_tracks['time_signature'] == 1)].index, inplace=True)

