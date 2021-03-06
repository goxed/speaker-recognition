function ar=lpcrand(p,n,bw)
% generate n random stable polynomials of order p with a minimum pole
% bandwidth of bw*fs where fs is the sampling fequency.
% To limit the pole radius to r set bw=-log(r)/pi
% bw may be a vector specifying a different max bandwidth for each row

%      Copyright (C) Mike Brookes 1997
%
%      Last modified Wed Dec 29 16:12:18 1999
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

if nargin < 3
   bw=0;
   if nargin < 2
      n=1;
   end
end 
if p
   if ~bw
      ar=lpcrf2ar(2*rand(n,p+1)-1);
   else
      k=exp(-pi*bw(:)*(0:p));
      if size(k,1)==1
         ar=lpcrf2ar(2*rand(n,p+1)-1).*k(ones(n,1),:);
      else
         ar=lpcrf2ar(2*rand(n,p+1)-1).*k;
      end
   end
else
   ar=ones(n,1);
end
