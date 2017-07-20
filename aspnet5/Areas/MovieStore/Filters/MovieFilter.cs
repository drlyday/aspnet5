﻿using aspnet5.Areas.MovieStore.Models.Movies;

namespace aspnet5.Areas.MovieStore.Filters
{
    public class MovieFilter : IMovieFilter
    {
        private readonly IFilterRules _filter;

        public MovieFilter(IFilterRules filter)
        {
            _filter = filter;
        }

        public bool Filterout(Movie movie)
        {
            return _filter.FilterOut(movie?.Genre);
        }

        public string Name => _filter.Name;
    }
}