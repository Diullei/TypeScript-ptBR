var TSSite;
(function(TSSite) {
    var PanoramaContainer = (function () {
        function PanoramaContainer(container, msTimeout) {

            this._surfaces = [];
            this._content = container;
            this._timeout = msTimeout;
            this._index = 0;
        }
        PanoramaContainer.prototype.addSurface = function (surface) {
            if(surface.parentElement !== this._content) {
                throw new Error('Invalid element.');
            }
            this._surfaces.push(surface);
        };
        PanoramaContainer.prototype._moveNext = function () {
            var oldIndex = this._index;
            this._index++;
            if(this._index >= this._surfaces.length) {
                this._index = 0;
            }
            var nextSurface = this._surfaces[this._index];
            var oldSurface = this._surfaces[oldIndex];
            if(oldSurface) {
                $(oldSurface).animate({
                    opacity: 0
                }, 250, 'linear', function (s) {
                    $(oldSurface).addClass('hidden');
                    $(nextSurface).css({
                        opacity: 0
                    }).removeClass('hidden');
                    $(nextSurface).animate({
                        opacity: 1
                    }, 250);
                });
            } else  {
                $(nextSurface).animate({
                    opacity: 1
                }, 250);
            }
        };
        PanoramaContainer.prototype.begin = function () {
            var _self = this;
            if(!isNaN(this._interval)) {
                throw new Error('Panorama already running.');
            }
            this._interval = setInterval(function () {
                return _self._moveNext();
            }, this._timeout);
            return this._interval;
        };
        PanoramaContainer.prototype.stop = function () {
            if(!isNaN(this._interval)) {
                clearInterval(this._interval);
                this._interval = NaN;
            }
        };
        Object.defineProperty(PanoramaContainer.prototype, "timeout", {
            get: function () {
                return this._timeout;
            },
            set: function (value) {
                this._timeout = value;
            },
            enumerable: true,
            configurable: true
        });
        PanoramaContainer.initialize = function initialize(container, selector) {
            var p = new PanoramaContainer(container, 1500);
            var elems = document.querySelectorAll(selector);
            for(var i = 0; i < elems.length; i++) {
                p.addSurface(elems[i]);
            }
            return p;
        }
        return PanoramaContainer;
    })();
    TSSite.PanoramaContainer = PanoramaContainer;
    
})(TSSite||(TSSite={}));

