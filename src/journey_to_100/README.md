# Talk: Journey to 100%- Lessons learned on the journey to total test coverage.

## Abstract
TBD, once I flesh out the below.

## Outline
This presentation doesn't try to make an argument for whether 100% is 
achievable - it is. Neither does it try to make an argument on whether it's 
cost-effective, nor go down the path of bikeshedding about the proper 
percentage rate. It only tries to talk about the lessons I've learned 
while achieving it.

1. Introduction
    1. Who I am, and why that matters
        1. Personal Projects
        2. VMware projects
        3. OpenStack projects
2. Why this presentation?
    1. I am not trying to say this is a good idea, or not. This is about
3. Why 100%?
    1. As a single developer, I forget what I wrote a week ago.
    2. I'm stubborn.
    3. Everyone says that it's impossible.
4. Lessons learned
    1. TDD is only useful if you've achieved mastery of the project.
        1. The component you start out building will not be the component you
           finish with. Chances are your tests will have to change 
           substantially, and that generates churn.
    2. You think about code differently (testability first).
        1. Significant impact on software design.
        2. More utility methods, fewer private methods.
    3. Everything has already been built.
        1. Chances are you're building something that already exists.
    4. Contracts will set you free.
        1. Defined CRUD contract means 900 tests are reusable for each 
           resource endpoint. 8 resources = 7200 tests.
        2. You become very aggressive about defining consistent, reusable 
           interfaces.
        3. Contracts will make you far, far faster. Reusable tests against a 
           defined contract will provide you with 80% of your test confidence 
           out of the box.
    5. You become a master at test frameworks
        1. JUnit Rules (Permits swapping databases)
        2. Powermock & Mockito
        3. Parameterized Tests
    6. You build really sophisticated test frameworks.
        1. Story: Leaking database connections.
        2. Story: Single vs. multiple test applications.
        3. Story: Application Test Context Building.
    7. There will be useless tess.
        1. Checkstyle rules + utility classes = private constructor tests.
5. What does the community think?
    1. Is it cost effective?

## Takeaways

... TBD
