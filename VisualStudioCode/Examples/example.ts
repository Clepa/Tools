search(term: string): Observable < SearchItem[] > {
  let apiURL = `${this.apiRoot}?term=${term}&media=music&limit=20&callback=JSONP_CALLBACK`;
  return this.http.get(apiURL)(1)
    .map(res => {
      (2)
      return res.json().results.map(item => {
        (3)
        return new SearchItem((4)
              item.trackName,
          item.artistName,
          item.trackViewUrl,
          item.artworkUrl30,
          item.artistId
        );
      });
    });
}
