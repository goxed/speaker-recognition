function [y,t]=schmitt(x,low,high)
% Pass input signal X through a schmitt trigger
% SCHMITT(X,LOW,HIGH) gives low and high thresholds. LOW and HIGH can be
% scalars or can be vectors specifiying different thresholds for each X element.
%
% SCHMITT(X,HYSTERESIS) specifies the thresholds as MAX-DELTA and MIN+DELTA where
% DELTA=(MAX-MIN)*(1-HYSTERESIS)/2.
% HYSTERESIS must be in the range 0 to 1; default is 0.5.
%
% Output Y takes values -1, +1 according to whether X<LOW or X>HIGH most recently.
% Y may be 0 for an initial segment if neither condition is initially true.
% For [Y,T]=SCHMITT(...) Y contains alternate +1 and -1 values and T contains
% the sample numbers at which X crossed the thresholds.


%      Copyright (C) Mike Brookes 1998
%
%      Last modified Thu Jul 30 08:18:47 1998
%
%   VOICEBOX is a MATLAB toolbox for speech processing. Home page is at
%   http://www.ee.ic.ac.uk/hp/staff/dmb/voicebox/voicebox.html
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   This program is free software; you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation; either version 2 of the License, or
%   (at your option) any later version.
%
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You can obtain a copy of the GNU General Public License from
%   ftp://prep.ai.mit.edu/pub/gnu/COPYING-2.0 or by writing to
%   Free Software Foundation, Inc.,675 Mass Ave, Cambridge, MA 02139, USA.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if nargin<2 low=0.5; end
if nargin<3
  xmax=max(x);
  xmin=min(x);
  low=(xmax-xmin)*(1-low)/2;
  high=xmax-low;
  low=xmin+low;
  end
c=(x>high)-(x<low);
c(2:end)=c(2:end).*(c(2:end)~=c(1:end-1));
t=find(c);
t(1+find(c(t(2:end))==c(t(1:end-1))))=[];
if nargout>1 y=c(t);
else
   y=zeros(size(c));
   if ~isempty(t)
   y(t)=2*c(t);
   y(t(1))=c(t(1));
   y=cumsum(y);
   end
end
