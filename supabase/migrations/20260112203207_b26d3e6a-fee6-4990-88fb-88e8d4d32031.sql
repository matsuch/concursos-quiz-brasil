-- Enable RLS on courses table
ALTER TABLE public.courses ENABLE ROW LEVEL SECURITY;

-- Allow everyone to view courses (public content)
CREATE POLICY "Courses are viewable by everyone"
ON public.courses
FOR SELECT
USING (true);

-- Enable RLS on modules table
ALTER TABLE public.modules ENABLE ROW LEVEL SECURITY;

-- Allow everyone to view modules (public content)
CREATE POLICY "Modules are viewable by everyone"
ON public.modules
FOR SELECT
USING (true);

-- Enable RLS on videos table
ALTER TABLE public.videos ENABLE ROW LEVEL SECURITY;

-- Allow everyone to view videos (public content)
CREATE POLICY "Videos are viewable by everyone"
ON public.videos
FOR SELECT
USING (true);